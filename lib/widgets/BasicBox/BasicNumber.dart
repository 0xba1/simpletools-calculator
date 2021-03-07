import 'package:calculator/models/CalcTray.dart';
import 'package:flutter/material.dart';

class BasicNumber extends StatelessWidget {
  BasicNumber(
      {Key key,
      @required this.text,
      @required this.calcTrayNotifier,
      this.color})
      : super(key: key);

  final text;
  final color;
  final CalcTray calcTrayNotifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Color(0x33707070),
      onPressed: () => {calcTrayNotifier.add(text)},
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
