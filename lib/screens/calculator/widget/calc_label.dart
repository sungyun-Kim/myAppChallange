import 'package:flutter/material.dart';

// User can enter numbers as sequences up to 8 digits long by clicking on digits in the entry pad. Entry of any digits more than 8 will be ignored.

class CalcLabel extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextEditingController controller;
  final int length;
  CalcLabel({this.text, this.textStyle, this.controller, this.length});

  @override
  Widget build(BuildContext context) {
    controller.text = text;

    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.centerRight,
      child: TextField(
        maxLength: length,
        textAlign: TextAlign.end,
        readOnly: true,
        controller: controller,
        style: textStyle,
      ),
    );
  }
}
