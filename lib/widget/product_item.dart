import 'package:flutter/material.dart';
import 'package:flutter_fav/product_provider/product.dart';
import 'package:flutter_fav/product_provider/product_provider.dart';
import 'package:flutter_fav/screen_view/product_details.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductDetails.routeName, arguments: product.id);
      },
      child: GridTile(
        child: Image.network(
          product.imgUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(
                product.isFavourite || productProvider.isFavorite(product)
                    ? Icons.favorite
                    : Icons.favorite_border),
            onPressed: () {
              product.toggleFavorite();
              productProvider.isFavorite(product)
                  ? productProvider.removeFavorite(product)
                  : productProvider.addFavorite(product);
            },
            color: Theme.of(context).accentColor,
          ),
          title: Text(product.title),
        ),
      ),
    );
  }
}
