import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Center(
        
        child:_questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(child: Text("The End",style: TextStyle(fontSize: 22),),),
      ),
      ),
    );
  }
}
