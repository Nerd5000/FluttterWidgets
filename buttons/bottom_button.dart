import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  RectangularButton(
      {@required this.onTap, @required this.buttonTitle, @required this.color});

  final Function onTap;
  final String buttonTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Center(
          child: Text(
            buttonTitle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
        width: double.infinity,
        color: color,
      ),
    );
  }
}
