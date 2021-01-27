import 'package:flutter/material.dart';

class DegRadVal {
  ValueNotifier value = ValueNotifier(true);

  void toggleValue() {
    value.value = !value.value;
  }
}
