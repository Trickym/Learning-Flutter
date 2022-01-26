import 'package:flutter/material.dart';
import 'package:test_tut/pages/home.dart';
import 'package:test_tut/pages/login.dart';
import 'package:test_tut/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => Login(),
      },
    );
  }
}
