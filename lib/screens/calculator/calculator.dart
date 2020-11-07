import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

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
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(), boxShadow: [BoxShadow()]),
          ),
        ),
      ),
    );
  }
}
