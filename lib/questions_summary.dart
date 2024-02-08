import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  final List<AnswerQuestion> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  List<Widget> buildRows() {
    List<Widget> rows = [];
    summaryData.asMap().forEach((index, data) {
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: pickColor(data.userAnswer.correct),
              foregroundColor:  const Color.fromARGB(255, 20, 6, 105),
              radius: 18,
              child: Text(
                (index + 1).toString(),
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.question.title,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 188, 194, 246),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Correct: ${data.correctAnswer.text}",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 173, 143, 43),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "You: ${data.userAnswer.text}",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 43, 162, 173),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      );
    });
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: buildRows(),
        ),
      ),
    );
  }

  Color pickColor(bool isCorrect) {
    return isCorrect
        ? const Color.fromARGB(150, 55, 148, 243)
        : const Color.fromARGB(150, 232, 125, 166);
  }
}
