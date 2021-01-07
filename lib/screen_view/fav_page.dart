import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final favIem = Provider.of<ProductProvider>(context).favorites;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: Center(child: Text('Favorite'),),
      // body: GridView.builder(
      //     itemCount: favIem.length,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       childAspectRatio: 3 / 2,
      //     ),
      //     itemBuilder: (ctx, i) {
      //       return ChangeNotifierProvider.value(
      //           value: favIem[i], child: favIem[i].id.isEmpty ? Container() : ProductItem());
      //     }),
    );
  }
}
