import 'package:flutter/material.dart';

class InvVal {
  ValueNotifier value = ValueNotifier(false);

  void toggleValue() {
    value.value = !value.value;
  }
}
