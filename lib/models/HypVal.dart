import 'package:flutter/material.dart';

class HypVal {
  ValueNotifier value = ValueNotifier(false);

  void toggleValue() {
    value.value = !value.value;
  }
}
