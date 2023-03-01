import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int i = 0;

  void increment() {
    i++;
    notifyListeners();
  }

  void decrement() {
    i--;
    notifyListeners();
  }

  void twox() {
    i = i * 2;
    notifyListeners();
  }

  void fourx() {
    i = i * 4;
    notifyListeners();
  }

  void sixx() {
    i = i * 6;

    notifyListeners();
  }
}
