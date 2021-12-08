import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'Da geht noch mehr.';
    } else if (resultScore <= 9) {
      resultText = 'Ganz gut...';
    } else if (resultScore <= 12) {
      resultText = 'Sehr gut!';
    } else {
      resultText = 'Cheater.';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
