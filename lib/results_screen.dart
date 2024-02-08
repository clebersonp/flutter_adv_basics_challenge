import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';
import 'package:flutter_adv_basics_challenge/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.reset,
  });

  final List<AnswerQuestion> chosenAnswers;
  final void Function() reset;

  int get totalQuestions {
    return chosenAnswers.length;
  }

  int numCorrectQuestions() {
    return chosenAnswers
        .map((question) => question.userAnswer)
        .where((answer) => answer.correct)
        .length;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered ${numCorrectQuestions()} of $totalQuestions questions"
              " correctly!",
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: chosenAnswers),
            const SizedBox(height: 30),
            TextButton(
              onPressed: reset,
              child: const Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
