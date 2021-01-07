import 'package:flutter/material.dart';
import 'package:flutter_fav/screen_view/fav_page.dart';

import 'product_overview.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  String appBarTitle = "Flutter Flickr";
  List<Widget> _children = [
    ProductPage(),
    FavPage(),
  ];
  void onTabTapped(int index) {
    setState(() {
      tabIndex = index;
      if (index == 0) {
        appBarTitle = "Flickr Interesting";
      } else {
        appBarTitle = "Favourites";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: tabIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourites')
          ]),
    );
  }
}
