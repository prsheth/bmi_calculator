import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.iconName, this.label});

  final IconData iconName;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: kIconSize,
        ),
        SizedBox(
          height: 1.5,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
