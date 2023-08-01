import 'package:flutter/material.dart';
import 'package:flutter_basic_application_1/pages/home_page.dart';
import 'package:flutter_basic_application_1/pages/login_page.dart';
import 'package:flutter_basic_application_1/utils/routes.dart';
import 'package:flutter_basic_application_1/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
