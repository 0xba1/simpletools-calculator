import 'package:flutter/material.dart';

class FunctionChanger extends StatefulWidget {
  FunctionChanger({Key key, @required this.text, this.color}) : super(key: key);

  final text;
  final color;

  @override
  _FunctionChangerState createState() => _FunctionChangerState();
}

class _FunctionChangerState extends State<FunctionChanger> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Color(0x33707070),
      onPressed: () => {},
      shape: CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          this.widget.text,
          style: TextStyle(
              color: this.widget.color ?? Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
