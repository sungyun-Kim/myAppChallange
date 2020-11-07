import 'package:flutter/material.dart';

double _lSliderValue = 0;
double _tSliderValue = 0;
double _rSliderValue = 0;
double _bSliderValue = 0;
String txt = "hi";

class BorderRadPreview extends StatefulWidget {
  @override
  _BorderRadPreviewState createState() => _BorderRadPreviewState();
}

class _BorderRadPreviewState extends State<BorderRadPreview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BorderRadPreview',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BorderRadPreview'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Slider(
                    value: _tSliderValue,
                    divisions: 100,
                    min: 0,
                    max: 100,
                    label: _tSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(
                        () {
                          _tSliderValue = value;
                        },
                      );
                    },
                  ),
                  Slider(
                    value: _rSliderValue,
                    divisions: 100,
                    min: 0,
                    max: 100,
                    label: _rSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _rSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                child: Text('I am Box'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(_lSliderValue),
                    bottomLeft: Radius.circular(_bSliderValue),
                    topRight: Radius.circular(_rSliderValue),
                    topLeft: Radius.circular(_tSliderValue),
                  ),
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 0.5),
                    left: BorderSide(color: Colors.black, width: 0.5),
                    right: BorderSide(color: Colors.black, width: 0.5),
                    top: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Slider(
                    value: _bSliderValue,
                    divisions: 100,
                    min: 0,
                    max: 100,
                    label: _bSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _bSliderValue = value;
                      });
                    },
                  ),
                  Slider(
                    value: _lSliderValue,
                    divisions: 100,
                    min: 0,
                    max: 100,
                    label: _lSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _lSliderValue = value;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
