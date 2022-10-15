import 'package:flutter/material.dart';

class Spinner extends ChangeNotifier {
  bool isSpinning = false;
  void changeSpinnerState() {
    if (isSpinning == false) {
      isSpinning = true;
      notifyListeners();
    } else {
      isSpinning = false;
      notifyListeners();
    }
  }
}
