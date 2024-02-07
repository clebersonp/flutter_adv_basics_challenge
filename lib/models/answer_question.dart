import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_question.dart';

class AnswerQuestion {
  const AnswerQuestion({
    required QuizQuestion question,
    required QuizAnswer userAnswer,
  })  : _question = question,
        _userAnswer = userAnswer;

  final QuizQuestion _question;
  final QuizAnswer _userAnswer;

  QuizQuestion get question => _question;

  QuizAnswer get userAnswer => _userAnswer;

  @override
  String toString() {
    return 'AnswerQuestion{_question: $_question, _userAnswer: $_userAnswer}';
  }
}
