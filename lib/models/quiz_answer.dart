class QuizAnswer {
  final int _id;
  final String _text;
  final bool _correct;

  const QuizAnswer(int id, String text, bool correct)
      : _id = id,
        _text = text,
        _correct = correct;

  int get id => _id;

  String get text => _text;

  bool get correct => _correct;
}
