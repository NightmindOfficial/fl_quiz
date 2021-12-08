import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectionHandler;

  Answer(this.selectionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectionHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: const Text('Antwort 1'),
      ),
    );
  }
}
