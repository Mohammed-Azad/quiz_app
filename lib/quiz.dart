import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
        required this.questions,
        required this.questionIndex,
        required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['Answer'] as List).map((answer) {
          return Answer(() => answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
