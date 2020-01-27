import 'package:flutter/material.dart';

Widget chipDesign(String label,Color color){
  return Container(
    child:Chip(
      label: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
      elevation: 4.0,
      shadowColor: Colors.grey[700],
      padding: EdgeInsets.all(4),
    ),
  );
}