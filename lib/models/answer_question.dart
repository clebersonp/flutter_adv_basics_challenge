import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_question.dart';

class AnswerQuestion {
  const AnswerQuestion({
    required QuizQuestion question,
    required QuizAnswer answer,
  })  : _question = question,
        _answer = answer;

  final QuizQuestion _question;
  final QuizAnswer _answer;

  QuizQuestion get question => _question;

  QuizAnswer get answer => _answer;

  @override
  String toString() {
    return 'AnswerQuestion{_question: $_question, _answer: $_answer}';
  }
}
