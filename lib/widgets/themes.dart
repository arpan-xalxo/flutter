import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
      ));

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);

  static Color cremeColor = Color(0xfff5f5f5);
  static Color darkBlueColor = Color(0xff403b58);
}
