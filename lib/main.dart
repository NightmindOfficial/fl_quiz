import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          title: Text('Meine erste App'),
        ),
        body: Column(
          children: <Widget>[
            Text('Die Frage'),
            ElevatedButton(
              onPressed: null,
              child: Text('Antwort 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Antwort 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Antwort 3'),
            ),
          ],
        ),
      ),
    );
  }
}
