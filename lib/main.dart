import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mychallange/screens/bin2dec/bin_to_dec.dart';
import 'package:mychallange/screens/border_radius_preview/border_rad_prev.dart';
import 'package:mychallange/screens/calculator/calculator.dart';

void main() {
  runApp(MaterialApp(
    title: 'App',
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myChallange',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('myChallange'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 5),
              child: Text(
                'Tier-1: beginner',
                style: TextStyle(color: Colors.indigo, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.indigo,
                elevation: 10,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BinToDec()));
                },
                child: Text(
                  'BinaryToDec',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.indigo,
                elevation: 10,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BorderRadPreview()));
                },
                child: Text(
                  'borderRadiusPreview',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.indigo,
                elevation: 10,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calculator()));
                },
                child: Text(
                  'Calculator',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
