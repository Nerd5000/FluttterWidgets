import 'package:flutter/material.dart';

class ButtonCustomized extends StatefulWidget {
  ButtonCustomized(
      {this.text,
      this.color,
      this.height,
      this.width,
      this.onPressed,
      this.elevation}
      );

  final Color color;
  final String text;
  final double width;
  final double height;
  final Function onPressed;
  final double elevation;

  @override
  _ButtonCustomizedState createState() => _ButtonCustomizedState();
}

class _ButtonCustomizedState extends State<ButtonCustomized> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.color,
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      elevation: widget.elevation,
      child: MaterialButton(
        onPressed: widget.onPressed,
        minWidth: widget.width,
        height: widget.height,
        child: Text(
          widget.text,
        ),
      ),
    );
  }
}
