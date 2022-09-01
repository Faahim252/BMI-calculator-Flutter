import 'inputPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    BMICalculator(),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          // Color(0xFF090C22),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
          // Color(0xFF090C22),
          ),
      home: Inputpage(),
    );
  }
}
