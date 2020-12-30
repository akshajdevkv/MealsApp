import 'package:MealsApp/app_drawer.dart';
import 'package:MealsApp/category_screen.dart';
import 'package:MealsApp/favorites_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> pages = [
    CategoriesScreen(),
    Favorites(),
  ];
  int pageIndex = 0;
  void selectPage(int index) {
    setState(() {
      print(index);
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals"),
      ),
      drawer: MainDrawer(),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: selectPage,
        currentIndex: pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Category"),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              title: Text("Favourites"))
        ],
      ),
    );
  }
}
