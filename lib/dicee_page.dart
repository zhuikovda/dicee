import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    void _allDice() {
      setState(() {
        leftDice = Random().nextInt(6) + 1;
        rightDice = Random().nextInt(6) + 1;
      });
    }

    ;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  _allDice();
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _allDice();
                  });
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
