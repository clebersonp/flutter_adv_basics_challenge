import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/answer_button.dart';
import 'package:flutter_adv_basics_challenge/data/questions.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_question.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.title,
            style: GoogleFonts.lato(
              fontSize: 26,
              color: const Color.fromARGB(255, 188, 194, 246),
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            quizAnswer: currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            quizAnswer: currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            quizAnswer: currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            quizAnswer: currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
