import 'package:flutter/material.dart';
import 'package:flutter_basic_application_1/pages/cart_page.dart';
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
      themeMode: ThemeMode.dark,
      // theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
