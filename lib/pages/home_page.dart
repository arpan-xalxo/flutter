// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert";

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_basic_application_1/main.dart';
import 'package:flutter_basic_application_1/models/catalog.dart';
import 'package:flutter_basic_application_1/widgets/drawer.dart';
import 'package:flutter_basic_application_1/widgets/themes.dart';

import '../widgets/item_widget.dart';
import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
//json file se data niklana ke liye
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: MyTheme.darkBlueColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CatalogHeader(),
                  if (CatalogModel.items != null &&
                      CatalogModel.items.isNotEmpty)
                    CatalogList().py16().expand()
                  else
                    CircularProgressIndicator().centered().expand(),
                ],
              ),
            ),
          ),
        ));
  }
}
