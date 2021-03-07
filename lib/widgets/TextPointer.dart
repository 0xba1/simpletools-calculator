import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPointer extends StatefulWidget {
  const TextPointer({Key key}) : super(key: key);

  @override
  _TextPointerState createState() => _TextPointerState();
}

class _TextPointerState extends State<TextPointer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: VerticalDivider(
        color: Color(0xff03DAC6),
        indent: 2,
        endIndent: 2,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
