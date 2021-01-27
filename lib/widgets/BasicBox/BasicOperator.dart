import 'package:flutter/material.dart';

class BasicOperator extends StatelessWidget {
  BasicOperator({Key key, @required this.text, this.color}) : super(key: key);

  final text;
  final color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Color(0x33707070),
      onPressed: () => {},
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
