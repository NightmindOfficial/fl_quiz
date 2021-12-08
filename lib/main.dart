import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Antwort 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Antwort 2 wurde gewählt.');
              },
              child: const Text('Antwort 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Antwort 3 wurde gewählt.'),
              child: const Text('Antwort 3'),
            ),
          ],
        ),
      ),
    );
  }
}
