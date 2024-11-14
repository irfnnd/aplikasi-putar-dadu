import 'package:flutter/material.dart';
class StyledText extends StatelessWidget {
  final String text;

  // Constructor untuk menerima teks
  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24, // Ukuran font
        fontWeight: FontWeight.bold, // Ketebalan font
        color: Colors.white, // Warna teks
        // shadows: [
        //   Shadow(
        //     blurRadius: 10.0, // Tingkat blur
        //     color: Colors.black45, // Warna bayangan
        //     offset: Offset(2.0, 2.0), // Posisi bayangan
        //   ),
        // ],
      ),
    );
  }
}

// Widget utama dengan gradient background


