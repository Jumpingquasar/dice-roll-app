import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';

  rollDice() {
    var randomInt = Random().nextInt(6);
    setState(() {
      activeDice = 'assets/images/dice-${randomInt + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(10)),
          onPressed: rollDice,
          child: const Text('Roll the Dice!'),
        )
      ],
    );
  }
}
