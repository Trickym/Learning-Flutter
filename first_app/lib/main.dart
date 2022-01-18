import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

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
  var _i = 0;
  var a = [
    {
      'question': 'What\'s your favourite colour?',
      'options': [
        'Blue',
        'Black',
        'Green',
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'options': [
        'Lion',
        'Cheetah',
        'Tiger',
      ]
    },
  ];
  void onPressed() {
    var res = 0;
    if (_i == 0)
      res = 1;
    else
      res = 0;
    setState(() {
      _i = res;
    });
    print(a[res]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('TrickyM'),
      ),
      body: Column(
        children: [
          Questions(a[_i]['question'].toString()),
          ...(a[_i]['options'] as List<String>).map((answer) {
            return (Answers(onPressed, answer));
          }).toList()
        ],
      ),
    ));
  }
}
