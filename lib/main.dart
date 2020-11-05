import 'package:flutter/material.dart';
import 'package:mychallange/screens/bin2dec/bin_to_dec.dart';

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
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.deepPurple,
                elevation: 10,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BinToDec()));
                },
                onLongPress: () {},
                child: Text(
                  'Bin2Dec',
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
