import 'package:calculator/models/CalcTray.dart';
import 'package:calculator/widgets/ShowBox/AnswerDisplay.dart';
import 'package:calculator/widgets/ShowBox/FunctionDisplay.dart';
import 'package:flutter/material.dart';

class ShowBox extends StatelessWidget {
  const ShowBox({Key key, @required this.calcTrayNotifier}) : super(key: key);
  final CalcTray calcTrayNotifier;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          FunctionDisplay(
            calcTrayNotifier: calcTrayNotifier,
          ),
          AnswerDisplay(),
        ],
      ),
    );
  }
}
