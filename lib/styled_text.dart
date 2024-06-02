import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        shadows: [
          Shadow(blurRadius: 15, color: Colors.green),
        ],
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
