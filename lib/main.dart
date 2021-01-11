import 'package:flutter/material.dart';
import 'pages/homePage/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff03DAC6),
        accentColor: Color(0x7703DAC6),
      ),
      home: HomePage(),
    );
  }
}
