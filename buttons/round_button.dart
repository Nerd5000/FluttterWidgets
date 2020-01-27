import 'package:flutter/material.dart';

Widget roundButtonCUS(double radiusValue, Color backgroundColor,
    Color textColor, Function onPressed) {
  return RaisedButton(
    textColor: textColor,
    color: backgroundColor,
    shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
        side: BorderSide(color: backgroundColor)),
    onPressed: onPressed,
    child: Text('Calculate'),
  );
}
