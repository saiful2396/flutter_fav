import 'package:flutter/material.dart';
import 'package:flutter_fav/product_provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = 'prod-details';
  @override
  Widget build(BuildContext context) {
    final prodId = ModalRoute.of(context).settings.arguments.toString();
    final loadedProduct =
        Provider.of<ProductProvider>(context).findById(prodId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedProduct.title,
        ),
      ),
    );
  }
}
