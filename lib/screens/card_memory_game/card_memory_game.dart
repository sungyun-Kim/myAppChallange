import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

// User can see a grid with n x n cards (n is an integer). All the cards are faced down initially (hidden state)

// User can click a button to start the game. When this button is clicked, a timer will start

// User can click on any card to unveil the image that is underneath it (change it to visible state).
// The image will be displayed until the user clicks on a 2nd card

// When the User clicks on the 2nd card:

// If there is a match, the 2 cards will be eliminated from the game (either hide/remove them or leave them in the visible state)
// If there isn't a match, the 2 cards will flip back to their original state (hidden state)
// When all the matches have been found, the User can see a dialog box showing
// a Congratulations message with a counter displaying the time it took to finish the game

List<String> currentStateList = [];
List<GlobalKey<FlipCardState>> cardKeyList = [];

class CardMemoryGame extends StatefulWidget {
  @override
  _CardMemoryGameState createState() => _CardMemoryGameState();
}

class _CardMemoryGameState extends State<CardMemoryGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('CardMemoryGame'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            padding: EdgeInsets.all(20),
            crossAxisCount: 4,
            children: createCards(),
          ),
        ),
      ),
    );
  }
}

List<Widget> createCards() {
  List<Widget> result = [];

  List<String> list = [
    'O',
    'O',
    'X',
    'X',
    '★',
    '★',
    '＆',
    '＆',
    '#',
    '#',
    '◇',
    '◇',
    '♠',
    '♠',
    '♣',
    '♣'
  ];

  list.shuffle();

  for (var i = 0; i < 16; i++) {
    GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

    cardKeyList.add(cardKey);

    result.add(
      Container(
        padding: EdgeInsets.all(1),
        child: FlipCard(
          key: cardKeyList[i],
          direction: FlipDirection.HORIZONTAL,
          onFlip: () {
            if (currentStateList.length < 2) {
              currentStateList.add(list[i]);
              print(currentStateList);
              print(i);
            } else {}
          },
          front: Card(
            child: Container(alignment: Alignment.center, color: Colors.pink),
          ),
          back: Card(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                list[i],
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
  return result;
}
