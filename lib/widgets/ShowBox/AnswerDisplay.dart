import 'package:flutter/material.dart';

class AnswerDisplay extends StatelessWidget {
  const AnswerDisplay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "025",
              style: TextStyle(
                  fontSize: 64,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
