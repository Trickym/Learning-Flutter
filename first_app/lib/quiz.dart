import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> a;
  final int i;
  final onPressed;
  Quiz(this.onPressed, this.a, this.i);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(a[i]['question'].toString()),
        ...(a[i]['options'] as List<Map<String, Object>>).map((answer) {
          return (Answers(() => onPressed(answer['score'] as int),
              answer['text'] as String));
        }).toList(),
      ],
    );
  }
}
