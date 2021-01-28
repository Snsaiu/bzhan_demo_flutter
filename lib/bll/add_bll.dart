import 'dart:wasm';

import 'package:flutter/material.dart';

class AddBll with ChangeNotifier {
  int count = 0;

  void increment() {
    this.count++;
    notifyListeners();
  }
}
