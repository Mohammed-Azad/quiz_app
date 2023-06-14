import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answers;
  const Answer(this.handler, this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      width: double.infinity,
      margin: EdgeInsets.all(2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3))),
        ),
        child: Text(answers),
        onPressed: handler(),
      ),
    );
  }
}
