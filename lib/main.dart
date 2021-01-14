import 'package:flutter/material.dart';
import 'package:flutter_fav/product_provider/product_provider.dart';
import 'package:flutter_fav/screen_view/home.dart';
import 'package:flutter_fav/screen_view/product_details.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
        routes: {
          ProductDetails.routeName:(_) => ProductDetails(),
        },
      ),
    );
  }
}
