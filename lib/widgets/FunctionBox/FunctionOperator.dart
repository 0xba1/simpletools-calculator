import 'package:flutter/material.dart';

class FunctionOperator extends StatelessWidget {
  FunctionOperator({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 70,
      splashColor: Color(0x33707070),
      onPressed: () => {},
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      child: Text(
        this.text,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
}
