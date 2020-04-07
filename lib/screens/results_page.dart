import 'package:bmi/components/constants.dart';
import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../components/resuable_card.dart';
import '../components/bottom_button.dart';
import 'package:bmi/bmiCalculator.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final ResultsPage args = ModalRoute.of(context)
        .settings
        .arguments; //GET ARGUMENTS FROM WHERE IT WAS SET
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                  args.resultText == 'Normal'
                      ? Text(
                          args.resultText.toUpperCase(),
                          style: kResultTextStyle,
                          textAlign: TextAlign.center,
                        )
                      : Text(
                          args.resultText.toUpperCase(),
                          style: kAlternateResultTextStyle,
                          textAlign: TextAlign.center,
                        ),
                  Text(
                    args.bmiResult,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    args.interpretation,
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
