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
  var leftDiceNumber = 2;
  var rightDiceNumber = 4;
  void changeDiceFace() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          flex: 1,
          child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Image(
              image: AssetImage('images/dice$leftDiceNumber.png'),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Image(
              image: AssetImage('images/dice$rightDiceNumber.png'),
            ),
          ),
        ),
      ],
    ));
  }
}
// class DicePage extends StatelessWidget {
//    var leftDiceNumber = 5;
//   @override
//   Widget build(BuildContext context) {

// }
