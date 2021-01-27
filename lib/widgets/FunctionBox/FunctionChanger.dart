// import 'package:flutter/material.dart';

// class FunctionChanger extends StatelessWidget {
//   const FunctionChanger({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//         valueListenable: degRadValueNotifier.degRadVal,
//         builder: (context, value, child) {
//           return MaterialButton(
//             splashColor: Color(0x33707070),
//             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//             onPressed: () {
//               degRadValueNotifier.toggleValue();
//             },
//             padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
//             // shape: RoundedRectangleBorder(
//             //     borderRadius: BorderRadius.circular(5)),
//             child: Text(
//               value ? "RAD" : "DEG",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w400),
//             ),
//           );
//         });
//   }
// }
