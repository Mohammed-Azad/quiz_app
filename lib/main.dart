import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:restart_app/restart_app.dart';
import './answer.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  void restartApp() {
    
  }

  void _reset() {
  Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      transitionDuration: Duration.zero,
      pageBuilder: (_, __, ___) => QuizApp(),
    ),
  );
}

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('We are done!');
    }
  }

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
      'question': "Are you a student?",
      'Answer': ["Yes", "No"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: Center(
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : resett(),
          )),
    );
  }
}

class resett extends StatelessWidget {
  const resett({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FloatingActionButton(
            onPressed: () => Restart.restartApp(), child: Icon(Icons.repeat_sharp)));
  }
}


