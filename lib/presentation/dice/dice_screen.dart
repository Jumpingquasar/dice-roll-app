import 'package:flutter/material.dart';
import 'package:roll_dice_app/presentation/dice/dice_roller.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1,
            colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.indigo,
              Colors.purple.shade400,
            ],
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
