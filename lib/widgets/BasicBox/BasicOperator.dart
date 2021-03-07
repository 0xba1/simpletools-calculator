import 'package:calculator/models/CalcTray.dart';
import 'package:flutter/material.dart';

class BasicOperator extends StatelessWidget {
  BasicOperator(
      {Key key,
      @required this.text,
      this.color,
      @required this.calcTrayNotifier,
      this.onPressed})
      : super(key: key);

  final text;
  final color;
  final CalcTray calcTrayNotifier;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Color(0x33707070),
      onPressed: onPressed ?? () => {calcTrayNotifier.add(text)},
      shape: CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          this.text,
          style: TextStyle(
              color: this.color ?? Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
