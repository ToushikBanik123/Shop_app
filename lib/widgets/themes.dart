import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: const Color(0xFFFF6366),
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          letterSpacing: 2,
          fontSize: 20,
        ),
      )
  );
}