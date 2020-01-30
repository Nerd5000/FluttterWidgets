import 'package:flutter/material.dart';

class RadiusButton extends StatefulWidget {
  final Function onPressed;
  final int radius;
  final String text;
  final Color color;

  RadiusButton({this.onPressed, this.radius, this.text, this.color});
  @override
  _RadiusButtonState createState() => _RadiusButtonState();
}

class _RadiusButtonState extends State<RadiusButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 10.0,
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
        ),
      ),
      color: widget.color,
      onPressed: widget.onPressed,
    );
  }
}
