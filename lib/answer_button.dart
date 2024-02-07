import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.quizAnswer, required this.onTap});

  final QuizAnswer quizAnswer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 39, 1, 108),
        foregroundColor: Colors.white.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(quizAnswer.text),
    );
  }
}
