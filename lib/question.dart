import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions;
  const Questions(this.questions);
  @override
  Widget build(BuildContext context) {
    return Text(questions);
  }
}
