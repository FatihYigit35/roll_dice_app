import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var _diceNumber = 1;

  void rollDice() {
    setState(() {
      _diceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$_diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: const StyledText('ROLL DICE'),
        )
      ],
    );
  }
}
