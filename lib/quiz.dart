import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String?, Object>> questions;
  final int quesIndex;
  final Function ansQues;

  const Quiz({
    Key? key,
    required this.questions,
    required this.ansQues,
    required this.quesIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quesIndex]['quesText'] as String,
        ),
        ...(questions[quesIndex]['answers'] as List<Map<String?, Object>>)
            .map((answer) {
          return Answer(
              () => ansQues(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
