class QuizAnswer {
  final String _answer;
  final bool _correct;

  const QuizAnswer(String answer, bool correct)
      : _answer = answer,
        _correct = correct;

  String get answer => _answer;

  bool get correct => _correct;
}
