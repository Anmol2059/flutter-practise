import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(AnmolApp());
}

class AnmolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnmolAppState();
  }
}

class _AnmolAppState extends State<AnmolApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); //setStatefunction vitra arko ek line function create gareko

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your fav colour? ',
        'answers': ['Black', 'Red', 'Green', 'white'],
      },
      {
        'questionText': 'what is your fav animal? ',
        'answers': ['Rabbit', 'Elephant', 'Lion', 'Giraffe'],
      },
      {
        'questionText': 'Who is your Best Instructor? ',
        'answers': ['Anmol', 'Anmol', 'Anmol', 'Anmol'],
      },
    ]; //var questions
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ), //Question
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ), //body children
      ), //scaffold
    ); //return
  } //widget
} //class
