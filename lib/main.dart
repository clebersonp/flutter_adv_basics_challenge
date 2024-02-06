import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter adv basics challenge",
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 61, 246),
                Color.fromARGB(255, 70, 91, 140),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
