import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.white,
      canvasColor: cremeColor,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcremeColor,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ));

  static Color cremeColor = Color(0xfff5f5f5);
  static Color darkcremeColor = Vx.gray100;
  static Color darkBlueColor = Color(0xff403b58);
  static Color lightBlueColor = Vx.purple400;
}
