// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_basic_application_1/models/catalog.dart';
import 'package:flutter_basic_application_1/widgets/drawer.dart';
import 'package:flutter_basic_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.xl4.bold.color(Colors.red).make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBlueColor),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: "Add to Cart".text.make(),
          ).wh(120, 40),
        ],
      ).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.5,
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
            ),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl.bold.make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p12()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
