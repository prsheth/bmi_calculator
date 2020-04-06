import 'package:flutter/material.dart';

const iconSize = 80.0;
const fontSize = 18.0;

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
          size: iconSize,
        ),
        SizedBox(
          height: 1.5,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
