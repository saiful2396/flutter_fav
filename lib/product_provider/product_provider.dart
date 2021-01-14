import 'package:flutter/material.dart';

import './product.dart';

class ProductProvider with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Electric Guitar',
      description: 'Water Proof Door Bell Water Proof Door Bell',
      price: 29.99,
      oldPrice: 40.0,
      imgUrl:
      'https://cdn.pixabay.com/photo/2017/11/07/00/22/guitar-2925282__340.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Electric Lamp',
      description: 'Gang 1 Way Switch Gang 1 Way Switch',
      price: 40.99,
      oldPrice: 59.99,
      imgUrl:
      'https://cdn.pixabay.com/photo/2016/11/23/13/56/light-1853025_960_720.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Iron',
      description: '56 inch Gold Fan 56 inch Gold Fan',
      price: 19.99,
      oldPrice: 35.0,
      imgUrl:
      'https://cdn.pixabay.com/photo/2013/07/18/15/08/ironing-164672_960_720.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Test Product',
      description: 'Test with different item and it should be worked',
      price: 35.99,
      oldPrice: 40.0,
      imgUrl:
      'https://cdn.pixabay.com/photo/2016/03/30/12/23/room-heater-1290546_960_720.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Camera lens',
      description: 'Camera lens with great power',
      price: 35.99,
      oldPrice: 40.0,
      imgUrl:
      'https://cdn.pixabay.com/photo/2016/02/19/11/37/lens-1209823_960_720.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Gang 1 Way Switch',
      description: 'Gang 1 Way Switch Gang 1 Way Switch',
      price: 35.99,
      oldPrice: 40.0,
      imgUrl:
      'http://luxury.dewantechnology.com/assets/images/product/1607921138.JPG',
    ),
    Product(
      id: 'p7',
      title: '56 inch Gold Fan',
      description: '56 inch Gold Fan 56 inch Gold Fan',
      price: 35.99,
      oldPrice: 40.0,
      imgUrl:
      'http://luxury.dewantechnology.com/assets/images/product/1607920971.png',
    ),
  ];
  List<Product> get items => [..._items];
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
  List<Product> favorites = [];

  void addFavorite(Product product) {
    favorites.add(product);
    notifyListeners();
  }

  void removeFavorite(Product product) {
    favorites.remove(product);
    notifyListeners();
  }

  bool isFavorite(Product product) {
    return favorites.contains(product);
  }
}