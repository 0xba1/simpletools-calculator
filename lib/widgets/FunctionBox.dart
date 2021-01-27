import 'package:flutter/material.dart';
import 'package:calculator/models/DegRadVal.dart';
import 'package:calculator/models/InvVal.dart';
import 'package:calculator/models/HypVal.dart';
import 'package:calculator/Widgets/FunctionBox/FunctionOperator.dart';

class FunctionBox extends StatelessWidget {
  const FunctionBox(
      {Key key,
      @required this.degRadValueNotifier,
      @required this.invValueNotifier,
      @required this.hypValueNotifier})
      : super(key: key);
  final DegRadVal degRadValueNotifier;
  final InvVal invValueNotifier;
  final HypVal hypValueNotifier;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ValueListenableBuilder(
                      valueListenable: degRadValueNotifier.value,
                      builder: (context, value, child) {
                        return MaterialButton(
                          minWidth: 70,
                          splashColor: Color(0x33707070),
                          onPressed: () {
                            degRadValueNotifier.toggleValue();
                          },
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            value ? "RAD" : "DEG",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        );
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable: invValueNotifier.value,
                      builder: (context, value, child) {
                        return MaterialButton(
                          minWidth: 70,
                          splashColor: Color(0x33707070),
                          onPressed: () {
                            invValueNotifier.toggleValue();
                          },
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                          child: Text(
                            "INV",
                            style: TextStyle(
                                color: value ? Color(0xff71efe0) : Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        );
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable: hypValueNotifier.value,
                      builder: (context, value, child) {
                        return MaterialButton(
                          minWidth: 70,
                          splashColor: Color(0x33707070),
                          onPressed: () {
                            hypValueNotifier.toggleValue();
                          },
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                          child: Text(
                            "HYP",
                            style: TextStyle(
                                color: value ? Color(0xff71efe0) : Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        );
                      },
                    ),
                    FunctionOperator(text: "("),
                    FunctionOperator(text: ")"),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ValueListenableBuilder(
                          valueListenable: invValueNotifier.value,
                          builder: (context, invVal, child) {
                            return ValueListenableBuilder(
                              valueListenable: hypValueNotifier.value,
                              builder: (context, hypVal, child) {
                                return FunctionOperator(
                                  text: invVal
                                      ? hypVal
                                          ? "sinh⁻¹­­"
                                          : "sin⁻¹­­"
                                      : hypVal
                                          ? "sinh"
                                          : "sin",
                                );
                              },
                            );
                          }),
                      ValueListenableBuilder(
                          valueListenable: invValueNotifier.value,
                          builder: (context, invVal, child) {
                            return ValueListenableBuilder(
                              valueListenable: hypValueNotifier.value,
                              builder: (context, hypVal, child) {
                                return FunctionOperator(
                                  text: invVal
                                      ? hypVal
                                          ? "cosh⁻¹­­"
                                          : "cos⁻¹­­"
                                      : hypVal
                                          ? "cosh"
                                          : "cos",
                                );
                              },
                            );
                          }),
                      ValueListenableBuilder(
                          valueListenable: invValueNotifier.value,
                          builder: (context, invVal, child) {
                            return ValueListenableBuilder(
                              valueListenable: hypValueNotifier.value,
                              builder: (context, hypVal, child) {
                                return FunctionOperator(
                                  text: invVal
                                      ? hypVal
                                          ? "tanh⁻¹­­"
                                          : "tan⁻¹­­"
                                      : hypVal
                                          ? "tanh"
                                          : "tan",
                                );
                              },
                            );
                          }),
                      FunctionOperator(text: "sinc"),
                      FunctionOperator(text: "x⁻¹­­")
                    ])),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FunctionOperator(text: "^"),
                    ValueListenableBuilder(
                      valueListenable: invValueNotifier.value,
                      builder: (context, value, child) {
                        return FunctionOperator(text: value ? "10^" : "log");
                      },
                    ),
                    FunctionOperator(text: "e^"),
                    FunctionOperator(text: "e"),
                    FunctionOperator(text: "√")
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FunctionOperator(text: "!"),
                    FunctionOperator(text: "nPr"),
                    FunctionOperator(text: "nCr"),
                    FunctionOperator(text: "π"),
                    FunctionOperator(text: "i")
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
