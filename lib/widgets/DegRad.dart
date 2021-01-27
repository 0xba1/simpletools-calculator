import 'package:flutter/material.dart';
import '../models/DegRadVal.dart';

DegRadVal degRadValueNotifier = DegRadVal();

class DegRad extends StatefulWidget {
  DegRad({Key key}) : super(key: key);
  @override
  _DegRadState createState() => _DegRadState();
}

class _DegRadState extends State<DegRad> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: degRadValueNotifier.value,
      builder: (context, value, child) {
        return Container(
          child: Text(value ? "DEG" : "RAD",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 16)),
        );
      },
    );
  }
}
