import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveColourReusableCards;
  Color femaleCardColor = kInactiveColourReusableCards;

  void toggleColor(Gender selectedGender) {
    selectedGender == Gender.male
        ? maleCardColor = kColourReusableCards
        : maleCardColor = kInactiveColourReusableCards;
    selectedGender == Gender.female
        ? femaleCardColor = kColourReusableCards
        : femaleCardColor = kInactiveColourReusableCards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTapAction: () {
                      setState(() {
                        toggleColor(Gender.male);
                      });
                    },
                    colour: maleCardColor,
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTapAction: () {
                      setState(() {
                        toggleColor(Gender.female);
                      });
                    },
                    colour: femaleCardColor,
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kColourReusableCards,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline
                              .alphabetic, //NEEDS TO BE DEFINED WHEN USING TEXT TO ALIGN BASELINE
                          mainAxisAlignment: MainAxisAlignment
                              .center, //Along the height of the row
                          crossAxisAlignment: CrossAxisAlignment
                              .baseline, //Along the width of the row
                          children: <Widget>[
                            Text(
                              '100',
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kColourReusableCards,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kColourReusableCards,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
