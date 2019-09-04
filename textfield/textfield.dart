import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  static String textOut;
  TextField({this.hint,this.icon,this.radius=30,this.borderColor});
  final String hint;
  final IconData icon;
  final double radius;
  final Color borderColor;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
      onChanged: (value) {
        textOut=value;
      },
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
      ),
    );
  }
}
