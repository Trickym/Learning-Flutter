import 'package:flutter/material.dart';

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
    'Name?',
    'Age?',
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
          Text(a[_i]),
          RaisedButton(
            child: Text('Option1'),
            onPressed: () => {onPressed()},
            color: Colors.blueAccent,
          ),
          RaisedButton(
            child: Text('Option2'),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text('Option3'),
            onPressed: () => {},
            color: Colors.amberAccent,
          ),
        ],
      ),
    ));
  }
}
