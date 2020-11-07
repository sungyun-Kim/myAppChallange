import 'package:flutter/material.dart';
import 'package:mychallange/screens/calculator/widget/calculate.dart';

class CalcButton extends StatelessWidget {
  final String op;
  final TextEditingController curController;
  final TextEditingController proController;

  CalcButton({this.op, this.curController, this.proController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text(op),
        color: Colors.white,
        onPressed: () {
          //is number
          if (isNum(op)) {
            if (curController.text.length < 8) {
              if (curController.text == "0") {
                curController.text = op;
              } else {
                curController.text += op;
              }
            }
          }
          //is operation
          else {
            switch (op) {
              case "AC":
                proController.text = "";
                curController.text = "";
                break;
              case "C":
                curController.text = "";
                break;

              case "+/-":
                break;

              case ".":
                break;

              case "=":
                proController.text += curController.text;
                curController.text = "";

                proController.text =
                    Calculate(str: proController.text.toString())
                        .calc()
                        .toString();

                break;
              default:
                if (proController.text != "" || curController.text != "") {
                  proController.text += curController.text + op;
                  curController.text = "";
                }
            }
          }
        },
      ),
    );
  }
}

bool isNum(String s) {
  return double.tryParse(s) != null;
}
