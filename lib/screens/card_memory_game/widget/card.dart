import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      onFlip: () {
        print('i am flipped');
      },
      front: Card(
        child: Container(
          alignment: Alignment.center,
          color: Colors.greenAccent,
        ),
      ),
      back: Card(
        child: Container(
          alignment: Alignment.center,
          child: Text('hi'),
        ),
      ),
    );
  }
}
