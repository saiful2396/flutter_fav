import 'package:flutter/material.dart';
import 'package:flutter_fav/product_provider/product_provider.dart';

import 'package:provider/provider.dart';

import '../widget/product_item.dart';

class ProductGrid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final prodData = Provider.of<ProductProvider>(context);
    final products = prodData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(5.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0
      ),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductItem(),
      ),
    );
  }
}