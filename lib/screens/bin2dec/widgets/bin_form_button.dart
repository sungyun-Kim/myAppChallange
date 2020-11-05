import 'package:flutter/material.dart';

void insert(TextEditingController controller, String value) {
  if (controller.text.length < 8) {
    controller.text = value + controller.text;
  }
}

class BinButton extends StatelessWidget {
  final String value;
  final TextEditingController textEditingController;

  BinButton({this.value, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 5,
      onPressed: () => insert(textEditingController, value),
      child: Text("insert " + value),
    );
  }
}
