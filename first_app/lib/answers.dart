import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String option;
  Answers(this.selectHandler, this.option);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.blueAccent,
        onPressed: selectHandler,
        textColor: Colors.white,
        child: Text(
          option,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
