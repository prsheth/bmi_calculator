import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //EXTENDS DARK THEME
        primaryColor: Color(0xFF0F1427), //0xFF stands for opacity of the color
        scaffoldBackgroundColor: Color(0xFF0F1427),
      ),
      home: InputPage(),
    );
  }
}
