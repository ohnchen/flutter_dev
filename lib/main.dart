import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite Color?',
      'answers': ['Black', "Red", "Green", "Blue"],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['Dog', "Cat", "Horse", "Chipmunk"],
    },
    {
      'questionText': 'What is your favorite Marvel Character?',
      'answers': ['Hulk', "Spiderman", "Captain America", "Iron Man"],
    },
  ];

  final _cardTexts = const [
    'Jona',
    'Dont',
    'Test',
    'Dont',
    'Just',
  ];

  var _index = 0;

  void _resetQuiz() {
    setState(() {
      _index = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _index++;
    });
    print(_index);
    if (_index < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: _index < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                index: _index,
                questions: _questions,
                cardTexts: _cardTexts,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
