import 'package:flutter/material.dart';
import 'package:mychallange/screens/bin2dec/widgets/bin_form_button.dart';

class BinButtonBar extends StatelessWidget {
  final TextEditingController controller;

  BinButtonBar({this.controller});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      buttonMinWidth: MediaQuery.of(context).size.width * 0.25,
      children: <Widget>[
        BinButton(textEditingController: controller, value: "0"),
        BinButton(textEditingController: controller, value: "1"),
        RaisedButton(
          color: Colors.redAccent,
          elevation: 5,
          onPressed: () {
            if (controller == '') {
              return;
            }

            if (controller.text != "") {
              controller.text =
                  controller.text.substring(1, controller.text.length);
            }
          },
          child: Text('delete'),
        ),
      ],
    );
  }
}
