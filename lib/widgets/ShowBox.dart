import 'package:flutter/material.dart';

class ShowBox extends StatefulWidget {
  ShowBox({Key key}) : super(key: key);
  
  @override
  _ShowBoxState createState() => _ShowBoxState();
}

class _ShowBoxState extends State<ShowBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Color(0xfffffafa),
      ),
    );
  }
}
