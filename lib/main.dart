import 'package:fl_quiz/answer.dart';
import 'package:fl_quiz/question.dart';
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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Antwort gewählt.');
  }

  var questions = [
    'Was ist deine Lieblingsfarbe?',
    'Was ist dein Lieblingstier?'
  ];

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
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
