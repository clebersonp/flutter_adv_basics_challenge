import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';
import 'package:flutter_adv_basics_challenge/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

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
        margin: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'You answered  ',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 188, 194, 246),
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '${numCorrectQuestions()}',
                    style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 43, 162, 173),
                    ),
                  ),
                  const TextSpan(text: ' of '),
                  TextSpan(
                    text: '$totalQuestions',
                    style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 173, 143, 43),
                    ),
                  ),
                  const TextSpan(text: ' questions correctly!'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: chosenAnswers),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: reset,
              icon: const Icon(
                Icons.refresh_outlined,
                color: Color.fromARGB(255, 188, 194, 246),
                size: 24,
              ),
              label: Text(
                "Restart Quiz!",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 188, 194, 246),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
