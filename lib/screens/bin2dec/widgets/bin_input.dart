import 'package:flutter/material.dart';

InputDecoration _inputDecoration(context, label) {
  return InputDecoration(
    labelText: label,
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

class BinInputText extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  BinInputText({this.controller, this.label});
  @override
  _BinInputTextState createState() => _BinInputTextState();
}

class _BinInputTextState extends State<BinInputText> {
  TextEditingController controller;
  String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            decoration: _inputDecoration(context, widget.label),
            controller: widget.controller,
            readOnly: true,
            enabled: true,
            maxLength: 8,
          ),
        )
      ],
    );
  }
}
