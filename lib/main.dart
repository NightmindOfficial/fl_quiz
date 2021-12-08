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

  // Decorator - macht den Code klarer. Es gibt eine Build
  // Methode, die wir selbst überschreiben wollen.
  // Damit sagen wir explizit, dass wir verstanden haben,
  // dass wir eine bestehende Methode überschreiben.

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'Was ist deine Lieblingsfarbe?',
        'qAnswers': ['Schwarz', 'Rot', 'Blau', 'Magenta'],
      },
      {
        'questionText': 'Was ist dein Lieblingstier?',
        'qAnswers': ['Hund', 'Katze', 'Tiger', 'Elefant'],
      },
      {
        'questionText': 'Was ist dein Lieblingsgetränk?',
        'qAnswers': ['Wasser', 'Tee', 'Kaffee', 'Cola'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meine erste App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['qAnswers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
