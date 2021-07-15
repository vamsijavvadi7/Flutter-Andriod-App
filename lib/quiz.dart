import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;

  final int questionIndex;
  final Function ansQuestion;

  Quiz({
    required this.ansQuestion,
    required this.questionIndex,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(
          (questions[questionIndex]['questionText'] as String),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  () => ansQuestion(answer['score']),
                  answer['text'] as String,
                ))
            .toList()
      ],
    ));
  }
}
