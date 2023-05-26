import 'package:flutter/material.dart';

class Item with ChangeNotifier {
  String id;
  String name;
  double price;
  String imageUrl;
  String description;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}
