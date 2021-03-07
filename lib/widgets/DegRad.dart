import 'package:flutter/material.dart';
import '../models/DegRadVal.dart';

DegRadVal degRadValueNotifier = DegRadVal();

class DegRad extends StatelessWidget {
  const DegRad({Key key}) : super(key: key);

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
