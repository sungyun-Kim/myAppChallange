import 'package:flutter/material.dart';
import 'package:mychallange/screens/calculator/widget/calc_button.dart';
import 'package:mychallange/screens/calculator/widget/calc_button_grid.dart';
import 'package:mychallange/screens/calculator/widget/calc_label.dart';

//To-Do
// User can see a display showing the current number entered or the result of the last operation.
// v User can see an entry pad containing buttons for the digits 0-9, operations - '+', '-', '/', and '=', a 'C' button (for clear), and an 'AC' button (for clear all).
// User can enter numbers as sequences up to 8 digits long by clicking on digits in the entry pad. Entry of any digits more than 8 will be ignored.
// User can click on an operation button to display the result of that operation on:
// the result of the preceding operation and the last number entered OR
// the last two numbers entered OR
// the last number entered
// User can click the 'C' button to clear the last number or the last operation. If the users last entry was an operation the display will be updated to the value that preceded it.
// User can click the 'AC' button to clear all internal work areas and to set the display to 0.
// User can see 'ERR' displayed if any operation would exceed the 8 digit maximum.

//do not use eval()

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

TextEditingController _progressTextController = TextEditingController();
TextEditingController _currentTextController = TextEditingController();

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            //Calculator Interface
            child: Column(
              children: <Widget>[
                CalcLabel(
                  controller: _progressTextController,
                  text: "",
                  textStyle: TextStyle(fontSize: 24, color: Colors.black54),
                ),
                CalcLabel(
                  controller: _currentTextController,
                  text: "",
                  length: 8,
                  textStyle: TextStyle(fontSize: 24, color: Colors.black),
                ),
                CalcGrid(
                  curController: _currentTextController,
                  procontroller: _progressTextController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
