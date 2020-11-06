import 'package:flutter/material.dart';

class BorderRadPreview extends StatefulWidget {
  @override
  _BorderRadPreviewState createState() => _BorderRadPreviewState();
}

class _BorderRadPreviewState extends State<BorderRadPreview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BorderRadPreview',
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
        body: Center(
          child: Text('hi'),
        ),
      ),
    );
  }
}
