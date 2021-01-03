
import 'package:MealsApp/dummy_data.dart';
import 'package:MealsApp/meal_detail_screen.dart';
import 'package:MealsApp/tabs_screen.dart';
import 'package:flutter/material.dart';

import './category_meals.dart';
import './filters_app.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List favouriteMeals = [];

  void toggleFavourite(String mealId){
    final existingMealIndex = favouriteMeals.indexWhere((element) => element.id == mealId);
    if (existingMealIndex >= 0){
      setState(() {
        print(favouriteMeals);
        favouriteMeals.removeAt(existingMealIndex);
      });      
    }
    else{
      setState(() {
        favouriteMeals.add(DUMMY_MEALS.firstWhere((element) => element.id == mealId));
      });
    }

  }

  bool isMealFavourite(String id){
    return favouriteMeals.any((element) => element.id == id);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      home: TabsScreen(favoutiteMeals: favouriteMeals,),
      routes: {
        '/category-meals': (context) => CategoryMealsScreen(),
        '/meal-detail-screen': (context) => MealDetailScreen(toggleFavourite: toggleFavourite,isMealFavourite: isMealFavourite,),
        '/filters-screen': (context) => FiltersScreen(),
      },
    );
  }
}
