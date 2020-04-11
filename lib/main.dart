import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Column(
              children: <Widget>[
                Text('Dicee'),
              ],
            ),
          ),
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
  @override
  int leftdicenumber = 4;
  int rightdicenumber = 3;
  void randomizer() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomizer();
                  //print(leftdicenumber);
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomizer();
                  //print(rightdicenumber);
                });
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
/*
class DicePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftdicenumber = 4;
    var rightdicenumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {},
            child: Image.asset('images/dice$leftdicenumber.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
