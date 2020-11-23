import 'package:flutter/material.dart';

class FlipCard extends StatefulWidget {
  @override
  _FlipCardState createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        alignment: Alignment.center,
        child: Text('i am card'),
      ),
    );
  }
}
