import 'package:flutter/material.dart';
import 'package:mychallange/screens/calculator/widget/calc_button.dart';

class CalcGrid extends StatelessWidget {
  final TextEditingController curController;
  final TextEditingController procontroller;

  CalcGrid({this.curController, this.procontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        crossAxisCount: 4,
        children: <Widget>[
          CalcButton(
            op: "C",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "AC",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "+/-",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "/",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "7",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "8",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "9",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "-",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "4",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "5",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "6",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "+",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "3",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "2",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "1",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "=",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: ".",
            proController: procontroller,
            curController: curController,
          ),
          CalcButton(
            op: "0",
            proController: procontroller,
            curController: curController,
          ),
        ],
      ),
    );
  }
}
