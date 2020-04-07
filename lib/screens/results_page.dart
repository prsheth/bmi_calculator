import 'package:bmi/components/constants.dart';
import 'package:flutter/material.dart';
import '../components/resuable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kLargeTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kColourReusableCards,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '18.5',
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'information',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTapped: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
