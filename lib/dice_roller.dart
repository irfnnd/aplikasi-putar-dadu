import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var gambarAktif = 'assets/images/dice-1.png'; // Path gambar awal

  // Fungsi untuk mengganti gambar dengan angka acak
  void putar() {
    setState(() {
      gambarAktif = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Menyusun widget di tengah
      children: [
        Image.asset(
          gambarAktif, // Gambar dadu berdasarkan nilai acak
          width: 200, // Ukuran gambar
        ),
        TextButton(
          onPressed: putar, // Memanggil fungsi putar() untuk mengganti gambar
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20), // Padding atas untuk tombol
            foregroundColor: Colors.white, // Warna teks tombol
            textStyle: TextStyle(fontSize: 28), // Ukuran teks tombol
          ),
          child: Text("Putar"), // Teks pada tombol
        ),
      ],
    );
  }
}
