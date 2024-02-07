import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/answer_button.dart';
import 'package:flutter_adv_basics_challenge/data/questions.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.title,
              style: GoogleFonts.lato(
                fontSize: 26,
                color: const Color.fromARGB(255, 188, 194, 246),
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffleAnswers.map(
              (answer) => AnswerButton(
                quizAnswer: answer,
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
