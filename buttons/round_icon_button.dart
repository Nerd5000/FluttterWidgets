import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.onPressed,
      @required this.iconData,
      @required this.color
      this.elevation = 0.0,
      this.width = 56.0,
      this.height = 56.0,
      });

  final IconData iconData;
  final Function onPressed;
  final double elevation;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        elevation: elevation,
        constraints: BoxConstraints.tightFor(
          width: width,
          height: height,
        ),
        shape: CircleBorder(),
        fillColor: color,
        child: Icon(iconData),
        );
  }
}
