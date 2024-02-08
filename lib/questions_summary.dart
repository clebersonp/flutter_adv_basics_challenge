import 'package:flutter/material.dart';
import 'package:flutter_adv_basics_challenge/models/answer_question.dart';

class QuestionsSummary extends StatelessWidget {
  final List<AnswerQuestion> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  List<Widget> buildRows() {
    List<Widget> rows = [];
    summaryData.asMap().forEach((index, data) {
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text((index + 1).toString()),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.question.title, textAlign: TextAlign.justify),
                  const SizedBox(height: 5),
                  Text("Correct: ${data.correctAnswer.text}"),
                  Text("You: ${data.userAnswer.text}"),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      );
    });
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: buildRows(),
        ),
      ),
    );
  }
}
