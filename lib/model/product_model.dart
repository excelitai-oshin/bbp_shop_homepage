
import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
 Widget ?upcoming;
  final String title;
  final String image;
  final int price;

  bool? isFavorite;
  Product(
      {required this.id,
        this.upcoming,
        required this.title,
        required this.image,
        required this.price,
        this.isFavorite});
}