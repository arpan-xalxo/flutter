import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iphone 12 pro",
      desc: "Apple iphone 12th generation",
      price: 999.0,
      color: "#3305a",
      image:
          "https://img1.gadgetsnow.com/gd/images/products/original/G201754.jpg",
    ),
  ];

  /*   //get Item by ID
 static getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //get Item by position
  
  
  static Item getByPosition(int pos) => items[pos];

*/
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
}

// toMap()=> {
// "id":id,
// "naem":name,
// "desc":desc,
// "price":price,
// "color":color,
// "image":image,

// }
