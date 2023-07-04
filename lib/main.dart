import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
              backgroundColor: Colors.greenAccent,
              centerTitle: true,
              title: const Text('Dicee')),
          body: DicePage(),
        )),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: IconButton(
              icon: Image.asset('images/dice$leftDiceNumber.png'),
              iconSize: 150,
              onPressed: () {
                changeDiceFace();
              },
            )),
            Expanded(
                child: IconButton(
              icon: Image.asset('images/dice$rightDiceNumber.png'),
              iconSize: 150,
              onPressed: () {
                changeDiceFace();
              },
            )),
          ],
        ),
      ),
    );
  }
}
