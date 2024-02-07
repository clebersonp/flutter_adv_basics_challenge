import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';

class QuizQuestion {
  final int _id;
  final String _title;
  final List<QuizAnswer> _answers;

  const QuizQuestion(int id, String title, List<QuizAnswer> answers)
      : _id = id,
        _title = title,
        _answers = answers;

  int get id => _id;

  String get title => _title;

  List<QuizAnswer> get answers => _answers;

  List<QuizAnswer> get shuffleAnswers {
    final shuffleAnswers = List.of(answers);
    shuffleAnswers.shuffle();
    // debugPrint("List before shuffled: $answers\n");
    // debugPrint("List after shuffled: $shuffleAnswers");
    return shuffleAnswers;
  }

  @override
  String toString() {
    return 'QuizQuestion{_id: $_id, _title: $_title, _answers: $_answers}';
  }
}
