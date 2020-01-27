import 'package:flutter/material.dart';

Widget choiceChip(List list) {
  return Wrap(
    alignment: WrapAlignment.center,
    runSpacing: 10.0,
    spacing: 10.0,
    children: List<Widget>.generate(
      list.length,
      (int index) {
        return ChoiceChip(
          padding: EdgeInsets.all(5),
          selectedColor: redLightBlood,
          tooltip: 'Select The Type',
          avatar: Icon(
            Icons.whatshot,
            color: redIconColor,
          ),
          label: Text(list[index]),
          selected: _value == list[index],
          onSelected: (bool selected) {
            setState(() {
              _value = list[index];
            });
          },
        );
      },
    ).toList(),
  );
}
