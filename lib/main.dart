import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _questions = [
    {
      'question': "How Old Are you ?",
      'Answer': ["17", "18", "19", "20"],
    },
    {
      'question': "Where did you live ?",
      'Answer': ["Hawler", "Sulaymaniah", "Duhok", "Halabja"]
    },
    {
      'question': "Are you stundent ?",
      'Answer': ["Yes", "No"]
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      SnackBar(
        content: Text("you have more questions"),
      );
    } else {
      SnackBar(
        content: Text("you are done ! "),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
