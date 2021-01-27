import 'package:flutter/material.dart';
import './BasicBox/BasicOperator.dart';
import './BasicBox/BasicNumber.dart';

class BasicBox extends StatelessWidget {
  const BasicBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Color(0xfffafa),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "7",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "8",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "9",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "4",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "5",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "6",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "1",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "2",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "3",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: "0",
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BasicNumber(
                              text: ".",
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    )
                  ],
                )),
            VerticalDivider(
              indent: 5,
              endIndent: 5,
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: BasicOperator(
                                text: "×",
                                color: Theme.of(context).primaryColor,
                              )),
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                icon: Icon(Icons.backspace),
                                onPressed: () => {},
                                color: Theme.of(context).primaryColor,
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: BasicOperator(
                                text: "÷",
                                color: Theme.of(context).primaryColor,
                              )),
                          Spacer()
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: BasicOperator(
                                text: "–",
                                color: Theme.of(context).primaryColor,
                              )),
                          Spacer()
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: BasicOperator(
                                text: "+",
                                color: Theme.of(context).primaryColor,
                              )),
                          Expanded(
                              flex: 1,
                              child: BasicOperator(
                                text: "=",
                                color: Theme.of(context).primaryColor,
                              )),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
