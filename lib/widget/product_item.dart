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
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: FadeInImage(
                  placeholder: AssetImage('assets/images/fan.png'),
                  image: NetworkImage(product.imgUrl),
                  height: MediaQuery.of(context).size.height *0.22,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 4,
                child: Text('৳ ${product.price.toStringAsFixed(1)}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
