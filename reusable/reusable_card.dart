import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final cardChild;
  final Function onPressMethode;
  ReusableCard({@required this.colour, this.cardChild, this.onPressMethode});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressMethode,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
