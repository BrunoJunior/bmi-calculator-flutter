import 'dart:math';

import 'package:tuple/tuple.dart';

import '../constants.dart';

const List<Tuple2<num, String>> BMIResultGrid = [
  Tuple2(0, 'Very severely underweight'),
  Tuple2(15, 'Severely underweight'),
  Tuple2(16, 'Underweight'),
  Tuple2(18.5, 'Normal'),
  Tuple2(25, 'Overweight'),
  Tuple2(30, 'Moderately obese'),
  Tuple2(35, 'Severely obese'),
  Tuple2(40, 'Very severely obese'),
];

class PersonalInfo {
  Gender gender;
  int height;
  int weight;
  int age;
  PersonalInfo({
    this.gender = Gender.male,
    this.weight = 80,
    this.height = 180,
    this.age = 20,
  });

  num _calculateBMI() => weight / pow(height / 100, 2);

  String get bmi => _calculateBMI().toStringAsFixed(1);

  String get result {
    num bmi = _calculateBMI();
    for (int i = BMIResultGrid.length - 1; i > -1; i--) {
      Tuple2<num, String> tuple = BMIResultGrid[i];
      if (bmi >= tuple.item1) {
        return tuple.item2;
      }
    }
    return 'Weird BMI value !';
  }
}
