import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz);
  String get remark {
    var res = 'Khatam!';
    if (totalScore <= 10) {
      res = 'Awesome!';
    } else if (totalScore <= 20) {
      res = 'Satisfactory!';
    } else {
      res = 'Bad!';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              remark,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: resetQuiz,
                child: Text(
                  'Play Again !!!!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
