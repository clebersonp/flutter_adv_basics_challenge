import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/data/questions.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';
import 'package:flutter_adv_basics_challenge/questions_screen.dart';
import 'package:flutter_adv_basics_challenge/results_screen.dart';
import 'package:flutter_adv_basics_challenge/screens.dart';
import 'package:flutter_adv_basics_challenge/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = Screens.startScreen;
  final List<AnswerQuestion> selectedAnswers = [];

  void switchScreen() {
    setState(() => activeScreen = Screens.questions);
  }

  void chooseAnswer(AnswerQuestion answer) {
    log("$selectedAnswers");

    // change to result screen when the user's answer list is full
    if (selectedAnswers.length == questions.length) {
      // go back to start quiz screen for now
      setState(() {
        activeScreen = Screens.resultsScreen;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = Screens.startScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (Screens.questions == activeScreen) {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
    if (Screens.resultsScreen == activeScreen) {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        reset: resetQuiz,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
