import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            textTheme: Theme.of(context).textTheme),
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      );
}
