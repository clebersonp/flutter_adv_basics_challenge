class Question {
  const Question({
    required int id,
    required String title,
  })  : _id = id,
        _title = title;

  final int _id;
  final String _title;

  int get id => _id;

  String get title => _title;

  @override
  String toString() {
    return 'Question{_id: $_id, _title: $_title}';
  }
}
