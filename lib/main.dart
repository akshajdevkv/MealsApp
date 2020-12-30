import 'package:MealsApp/favorites_screen.dart';
import 'package:MealsApp/meal_detail_screen.dart';
import 'package:MealsApp/tabs_screen.dart';
import 'package:flutter/material.dart';
import './category_screen.dart';
import './category_meals.dart';
import './filters_app.dart';

void main() => runApp(MyApp());
final key = new GlobalKey<FavoritesState>();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      home: TabsScreen(),
      routes: {
        '/category-meals': (context) => CategoryMealsScreen(),
        '/meal-detail-screen': (context) => MealDetailScreen(),
        '/filters-screen': (context) => FiltersScreen(),
      },
    );
  }
}
