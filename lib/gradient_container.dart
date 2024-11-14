import 'package:first_app3/dice_roller.dart';
import 'package:flutter/material.dart';
import 'styleText.dart';
import 'dice_roller.dart';

const startGradient = Alignment.topLeft;
const endGradient = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> gradientColors;

  const GradientContainer(this.gradientColors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent, // Warna latar belakang Scaffold
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startGradient, // Awal gradasi di kiri atas
            end: endGradient, // Akhir gradasi di kanan bawah
            colors: gradientColors, // Warna-warna untuk gradasi
          ),
        ),
        child: Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
