import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerquestion;

  const Quiz(@required this.answerquestion,@required this.questionIndex,@required this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['question'],
          ),
          ...(questions[questionIndex]['Answer'] as List).map((answer) {
          return Answer(() => answerquestion(),answer['text']);
        }).toList()
      ],
    );
  }
}
