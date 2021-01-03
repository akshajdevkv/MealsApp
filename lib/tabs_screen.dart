import 'package:MealsApp/app_drawer.dart';
import 'package:MealsApp/category_screen.dart';
import 'package:MealsApp/favorites_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  final List favoutiteMeals;
  TabsScreen({this.favoutiteMeals});
  @override
  _TabsScreenState createState() => _TabsScreenState();
  
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> pages;
  int pageIndex = 0;
  void selectPage(int index) {
    setState(() {
      print(index);
      pageIndex = index;
    });
  }
  @override
  void initState() {
    pages = [
    CategoriesScreen(),
    Favourites(widget.favoutiteMeals),
  ];
    super.initState();
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
            label: "Category",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: "Favourites",
              ),
        ],
      ),
    );
  }
}
