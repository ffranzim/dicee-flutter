import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  playDice();
                });
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                playDice();
              },
            ),
          ),
        ],
      ),
    );
  }

  void playDice() {
    setState(() {
      leftDiceNumber = _randomNumberOneUpToSix();
      rightDiceNumber = _randomNumberOneUpToSix();
    });
  }

  int _randomNumberOneUpToSix() => Random().nextInt(6) + 1;
}
