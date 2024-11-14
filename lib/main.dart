import 'package:flutter/material.dart';
import 'gradient_container.dart';
import 'dice_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: GradientContainer([Colors.blue, const Color.fromARGB(255, 101, 76, 214)]),
      

    ),
  );
}

