import 'package:flutter/material.dart';
import 'dart:math';
import 'package:expressions/expressions.dart';
import 'package:calculator/widgets/TextPointer.dart';

class CalcTray {
  ValueNotifier tray = ValueNotifier([]);
  ValueNotifier pointer = ValueNotifier(0);

  void add(element) {
    tray.value.insert(pointer.value, element);
    pointer.value++;
  }

  void changePointer(newPointer) {
    pointer.value = newPointer;
  }

  void increasePointer() {
    if (pointer.value != tray.value.length) pointer.value++;
  }

  void decreasePointer() {
    if (pointer.value != 0) pointer.value--;
  }

  List display() {
    List output = <Widget>[];
    int length = tray.value.length;

    if (length == 0)
      return <Widget>[
        TextPointer(),
      ];
    if (pointer.value == 0) output.add(TextPointer());
    for (var i = 0; i < length; i++) {
      output.add(
        Text(
          "${tray.value[i]}",
          style: TextStyle(
              fontSize: 64, color: Colors.grey, fontWeight: FontWeight.w300),
        ),
      );

      if (i + 1 == pointer.value) {
        output.add(TextPointer());
        print(pointer.value);
      }
    }
    return output;
  }

  answer(isRad) {
    int factorial(int num) {
      var output = 1;
      if (num > 1) output = num;
      for (var i = 2; i <= output; i++) output = output * i;
      return output;
    }

    permutation(int n, int r) {
      return factorial(n) / factorial(r);
    }

    combination(int n, int r) {
      return factorial(n) / factorial(r) / factorial(n - r);
    }

    String trayStr = tray.value.join("");

    RegExp factorialRegEx = RegExp(r"/(\d+)!/g");
    trayStr = trayStr.replaceAllMapped(factorialRegEx, (match) {
      return "factorial(${match.group(0)})";
    });

    RegExp permutationRegEx = RegExp(r"/(\d+)P(\d+)/g");
    trayStr = trayStr.replaceAllMapped(permutationRegEx, (match) {
      return "permutation(${match.group(0)}, ${match.group(1)})";
    });

    RegExp combinationRegEx = RegExp(r"/(\d+)P(\d+)/g");
    trayStr = trayStr.replaceAllMapped(combinationRegEx, (match) {
      return "combination(${match.group(0)}, ${match.group(1)})";
    });

    Expression expression = Expression.parse(trayStr);

    var context = {
      "×": "*",
      "÷": "/",
      "^": "**",
      "log": log,
      "e": exp(1),
      "ln": "1/loge * log",
      "factorial": factorial,
      "permutation": permutation,
      "combination": combination,
    };

    final evaluator = const ExpressionEvaluator();

    return evaluator.eval(expression, context);
  }
}
