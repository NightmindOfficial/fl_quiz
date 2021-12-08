import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectionHandler;
  final String answerText;

  Answer(this.selectionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectionHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(answerText),
      ),
    );
  }
}
