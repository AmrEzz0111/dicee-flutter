import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  Dice({Key key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int num1 = 0;
  int num2 = 0;

  void randome() {
    num1 = Random().nextInt(5);
    num2 = Random().nextInt(5);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randome();
                    print(num1);
                  });
                },
                child: Image.asset('images/dice$num1.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randome();
                    print(num2);
                  });
                },
                child: Image.asset(
                  'images/dice$num2.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
