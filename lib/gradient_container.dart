import 'package:flutter/material.dart';

class GradientContainer {
  Decoration decoration = const BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.green, Colors.greenAccent, Colors.blueAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
