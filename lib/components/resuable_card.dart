import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onTapAction});

  final Color colour;
  final Widget cardChild; //NOT Required property
  final Function onTapAction;
  //Final makes the property immutable, as stateless widget are immutable
  /*
  Final vs const
  a const is a compile time constant, for example it can be computed during compile time such as const a =4*8;
  a final can be computed after run time, object properties should be final as it can be created whenever
   */
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
