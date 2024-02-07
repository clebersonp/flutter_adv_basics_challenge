import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.quizAnswer, required this.onTap});

  final QuizAnswer quizAnswer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 39, 1, 108),
          foregroundColor: Colors.white.withOpacity(0.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(40),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
        ),
        child: Text(
          quizAnswer.text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
