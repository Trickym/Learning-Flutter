import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_tut/pages/home.dart';
import 'package:test_tut/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

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
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/": (context) => Login(),
      },
    );
  }
}
