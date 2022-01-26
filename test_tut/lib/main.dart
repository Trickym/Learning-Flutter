import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_tut/pages/home.dart';
import 'package:test_tut/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          backgroundColor: Colors.white),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => Login(),
      },
    );
  }
}
