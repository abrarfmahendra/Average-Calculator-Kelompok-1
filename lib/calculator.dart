import 'dart:math';
import 'constants.dart';

class Calculator {
  Calculator({required this.bil1, required this.bil2});

  final int bil1;
  final int bil2;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = (bil1 + bil2) / 2;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 80) {
      return 'GRADE A';
    } else if (_bmi >= 59) {
      return 'GRADE B';
    } else {
      return 'GRADE C';
    }
  }

  String getInterpretation() {
    if (_bmi >= 80) {
      return 'NILAI KAMU MEMUASKAN';
    } else if (_bmi >= 59) {
      return 'NILAI KAMU CUKUP';
    } else {
      return 'NILAI KAMU KURANG BAIK';
    }
  }
}
