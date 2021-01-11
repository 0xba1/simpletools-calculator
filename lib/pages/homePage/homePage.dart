import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'BasicBox.dart';
import 'FunctionBox.dart';
import 'ShowBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff00C1AD),
      systemNavigationBarColor: Color(0xff00C1AD),
    ));
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Theme.of(context).primaryColor,
                        size: 32,
                      ),
                      onPressed: () => {scaffoldKey.currentState.openDrawer()}),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "DEG",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [ShowBox(), FunctionBox(), BasicBox()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
