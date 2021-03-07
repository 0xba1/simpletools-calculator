import 'package:calculator/models/CalcTray.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FunctionDisplay extends StatelessWidget {
  const FunctionDisplay({Key key, @required this.calcTrayNotifier})
      : super(key: key);
  final CalcTray calcTrayNotifier;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ValueListenableBuilder(
          valueListenable: calcTrayNotifier.pointer,
          builder: (context, value, child) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: calcTrayNotifier.display());
          },
        ),
      ),
    );
  }
}
