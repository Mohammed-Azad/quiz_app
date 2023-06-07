import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions;
  const Questions(this.questions, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      child: Text(questions,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.black54,
      ),
      textAlign: TextAlign.center,),
    );
  }
}
