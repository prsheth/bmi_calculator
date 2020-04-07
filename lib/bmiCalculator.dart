import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int weight;
  final int height;
  double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight,Great !';
    } else {
      return 'You have a lesser than normal body weight, eat away!';
    }
  }
}
