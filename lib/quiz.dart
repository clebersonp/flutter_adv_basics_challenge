import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget screen = const StartScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          child: screen,
        ),
      ),
    );
  }
}
