import 'package:flutter/material.dart';
import 'package:welocme_ui/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
          primaryColor: thPrimaryColor,
          scaffoldBackgroundColor: thBGColor,
          brightness: Brightness.dark,
          textTheme: TextTheme(
              headline4:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline5:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              button: TextStyle(
                color: thPrimaryColor,
              ))),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover,
                )),
              )),
          Expanded(
              child: Column(
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "LEARNING FLUTTER\n",
                        style: Theme.of(context).textTheme.headline4),
                    TextSpan(
                        text: "Flutter Development for Betterment",
                        style: Theme.of(context).textTheme.headline5)
                  ])),
            ],
          ))
        ],
      ),
    );
  }
}
