import 'package:flutter_adv_basics_challenge/models/question.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';

class AnswerQuestion {
  const AnswerQuestion({
    required Question question,
    required QuizAnswer correctAnswer,
    required QuizAnswer userAnswer,
  })  : _question = question,
        _correctAnswer = correctAnswer,
        _userAnswer = userAnswer;

  final Question _question;
  final QuizAnswer _correctAnswer;
  final QuizAnswer _userAnswer;

  Question get question => _question;

  QuizAnswer get userAnswer => _userAnswer;

  QuizAnswer get correctAnswer => _correctAnswer;

  @override
  String toString() {
    return 'AnswerQuestion{_question: $_question, _correctAnswer: $_correctAnswer, _userAnswer: $_userAnswer}';
  }
}
