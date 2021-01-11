import 'package:flutter/material.dart';

class FunctionBox extends StatefulWidget {
  const FunctionBox({Key key}) : super(key: key);

  @override
  _FunctionBoxState createState() => _FunctionBoxState();
}

class _FunctionBoxState extends State<FunctionBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: null,
      ),
    );
  }
}
