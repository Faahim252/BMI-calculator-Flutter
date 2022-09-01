import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/Resuble.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Button_button.dart';

class ReseltPage extends StatelessWidget {
  ReseltPage(
      {required this.bmiReselt,
      required this.ReseultText,
      required this.interprstion});
  final String bmiReselt;
  final String ReseultText;
  final String interprstion;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
          // Color(0xFF090C22),
          ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMICALCULATOR',
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Your Reselt',
                  style: Tiltletxtstyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusebleCode(
                colour: ActiveColor,
                onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ReseultText.toUpperCase(),
                      style: Resultstyle,
                    ),
                    Text(
                      bmiReselt,
                      style: BmitxtStyle,
                    ),
                    Text(
                      interprstion,
                      textAlign: TextAlign.center,
                      style: bodyText,
                    )
                  ],
                ),
              ),
            ),
            ButtonButton(
                OnTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RECALCULATE')
          ],
        ),
      ),
    );
  }
}
