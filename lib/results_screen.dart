import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.reset,
  });

  final List<AnswerQuestion> chosenAnswers;
  final void Function() reset;

  int get qtdQuestions {
    return chosenAnswers.length;
  }

  int qtdCorrectAnswers() {
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
              "You answered ${qtdCorrectAnswers()} of $qtdQuestions questions"
              " correctly!",
            ),
            const SizedBox(height: 30),
            const Text("List of answers and questions..."),
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
