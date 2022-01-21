import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final String title = "First App";
  var _i = 0;
  var _totalScore = 0;
  final _a = const [
    {
      'question': 'What\'s your favourite colour?',
      'options': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 30},
        {'text': 'Green', 'score': 5},
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'options': [
        {'text': 'Lion', 'score': 5},
        {'text': 'Cheetah', 'score': 10},
        {'text': 'Tiger', 'score': 30},
      ]
    },
  ];
  void _onPressed(int score) {
    _totalScore += score;
    setState(() {
      _i = _i + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _i = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _i < _a.length
          ? Quiz(_onPressed, _a, _i)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
