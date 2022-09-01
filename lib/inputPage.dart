import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContents.dart';
import 'Resuble.dart';
import 'Constant.dart';
import 'Result.dart';
import 'Button_button.dart';
import 'Round.dart';
import 'calculation.dart';

enum Gender {
  male,
  female,
}

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender? SelectedGender;
  //this height is the of midlle containner slider
  int Height = 180;
  int Weight = 60;
  int age = 1;

  /* Color MaleCardColor = inActiveColor;
  Color FemaleCardColor = inActiveColor;
// male 1 female 2
  void UpdateColor(Gender selecyedGender) {
    //male was prested
    if (selecyedGender == Gender.male) {
      if (MaleCardColor == inActiveColor) {
        MaleCardColor = ActiveColor;
        FemaleCardColor = inActiveColor;
      } else {
        MaleCardColor = inActiveColor;
      }
    }
    if (selecyedGender == Gender.female) {
      if (FemaleCardColor == inActiveColor) {
        FemaleCardColor = ActiveColor;
        MaleCardColor = inActiveColor;
      } else {
        FemaleCardColor = inActiveColor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF11153B),
        title: Center(
          child: Text('BMIcalculator'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusebleCode(
                  onPress: () {
                    setState(() {
                      SelectedGender = Gender.male;
                    });
                  },
                  colour: SelectedGender == Gender.male
                      ? ActiveColor
                      : inActiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                ),
              ),
              Expanded(
                child: ReusebleCode(
                  onPress: () {
                    setState(() {
                      SelectedGender = Gender.female;
                    });
                  },
                  colour: SelectedGender == Gender.female
                      ? ActiveColor
                      : inActiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusebleCode(
              onPress: () {},
              colour: ActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hight',
                    style: Lablestyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        Height.toString(),
                        style: MidContainerStyle,
                      ),
                      Text(
                        'cm',
                        style: Lablestyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTickMarkColor: Color(0xFF8D8E98),
                      activeTickMarkColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB155),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: Height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double Newvalue) {
                          setState(() {
                            Height = Newvalue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ReusebleCode(
                    onPress: () {},
                    colour: ActiveColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'WEIGHT',
                          style: Lablestyle,
                        ),
                        Text(
                          Weight.toString(),
                          style: MidContainerStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              Onpressed: () {
                                setState(() {
                                  Weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              Onpressed: () {
                                setState(() {
                                  Weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusebleCode(
                    onPress: () {},
                    colour: ActiveColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'AGE',
                          style: Lablestyle,
                        ),
                        Text(
                          age.toString(),
                          style: MidContainerStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                Onpressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                Onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonButton(
            buttonTitle: 'CALCULATE',
            OnTap: () {
              Calculation1 calc = Calculation1(height: Height, weight: Weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ReseltPage(
                  bmiReselt: calc.calculateBMI(),
                  ReseultText: calc.getReselt(),
                  interprstion: calc.getinterpre(),
                );
              }));
            },
          )
        ],
      ),
    );
  }
}
