import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final double oldPrice;
  final String imgUrl;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.oldPrice,
    @required this.imgUrl,
    this.isFavourite = false,
  });

  void toggleFavorite(){
    isFavourite =! isFavourite;
    notifyListeners();
  }
}