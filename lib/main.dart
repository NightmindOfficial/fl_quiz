import 'package:fl_quiz/quiz.dart';
import 'package:fl_quiz/result.dart';
import 'package:flutter/material.dart';

// Zu kompliziert, würde aber auch gehen - ist die erste Methode, die aufgerufen wird.

// void main() {
//   runApp(MyApp());
// }

// Vereinfachte Version von void main (in einer Zeile)
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Was ist deine Lieblingsfarbe?',
      'qAnswers': [
        {'text': 'Schwarz', 'score': 1},
        {'text': 'Rot', 'score': 2},
        {'text': 'Blau', 'score': 3},
        {'text': 'Magenta', 'score': 4}
      ],
    },
    {
      'questionText': 'Was ist dein Lieblingstier?',
      'qAnswers': [
        {'text': 'Hund', 'score': 4},
        {'text': '43', 'score': 3},
        {'text': 'Tiger', 'score': 2},
        {'text': 'Elefant', 'score': 1}
      ],
    },
    {
      'questionText': 'Was ist dein Lieblingsgetränk?',
      'qAnswers': [
        {'text': 'Wasser', 'score': 2},
        {'text': 'Tee', 'score': 1},
        {'text': 'Kaffee', 'score': 4},
        {'text': 'Cola', 'score': 3}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('Es sind noch Fragen übrig.');
    }
  }

  // Decorator - macht den Code klarer. Es gibt eine Build
  // Methode, die wir selbst überschreiben wollen.
  // Damit sagen wir explizit, dass wir verstanden haben,
  // dass wir eine bestehende Methode überschreiben.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meine erste App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
