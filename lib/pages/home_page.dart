import 'package:flutter/material.dart';
import 'package:flutter_basic_application_1/main.dart';
import 'package:flutter_basic_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
