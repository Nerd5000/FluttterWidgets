import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableIcon extends StatelessWidget {
  final gender;
  final icon;

  ReusableIcon({this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 40.0,
          color: Color(0xffffffff),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: tStyleRegular,
        )
      ],
    );
  }
}
