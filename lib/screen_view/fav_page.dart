import 'package:flutter/material.dart';
import 'package:flutter_fav/product_provider/product_provider.dart';
import 'package:flutter_fav/widget/product_item.dart';
import 'package:provider/provider.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favIem = Provider.of<ProductProvider>(context).favorites;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: GridView.builder(
          itemCount: favIem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (ctx, i) {
            return ChangeNotifierProvider.value(
                value: favIem[i], child: favIem[i].id.isEmpty ? Container() : ProductItem());
          }),
    );
  }
}
