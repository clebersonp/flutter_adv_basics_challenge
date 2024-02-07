import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/answer_button.dart';
import 'package:flutter_adv_basics_challenge/data/questions.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectedAnswer,
  });

  final void Function(AnswerQuestion) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(AnswerQuestion answer) {
    widget.onSelectedAnswer(answer);
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

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
                  fontSize: 24,
                  color: const Color.fromARGB(255, 188, 194, 246),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffleAnswers.map(
              (answer) => AnswerButton(
                quizAnswer: answer,
                onTap: () => answerQuestion(
                  AnswerQuestion(question: currentQuestion, userAnswer: answer),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
