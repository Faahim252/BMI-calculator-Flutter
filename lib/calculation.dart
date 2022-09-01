import 'package:flutter/cupertino.dart';

import 'dart:math';

class Calculation1 {
  Calculation1({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getReselt() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getinterpre() {
    if (_bmi >= 25) {
      return 'you have ahigher than normal body  weight';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight';
    } else {
      return 'You have alower than normal weight';
    }
  }
}
