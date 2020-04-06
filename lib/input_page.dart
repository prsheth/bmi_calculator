import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const colourReusableCards = Color(0xFF1D1E33);
const inactiveColourReusableCards = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColourReusableCards;
  Color femaleCardColor = inactiveColourReusableCards;

  void toggleColor(Gender selectedGender) {
    selectedGender == Gender.male
        ? maleCardColor = colourReusableCards
        : maleCardColor = inactiveColourReusableCards;
    selectedGender == Gender.female
        ? femaleCardColor = colourReusableCards
        : femaleCardColor = inactiveColourReusableCards;
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
                    colour: colourReusableCards,
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
                    colour: colourReusableCards,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: colourReusableCards,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
