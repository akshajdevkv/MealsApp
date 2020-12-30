import 'package:MealsApp/meal.dart';
import 'package:flutter/material.dart';
import './dummy_data.dart';
import './mealitem.dart';

class Favorites extends StatefulWidget {
  @override
  FavoritesState createState() => FavoritesState();
}

class FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    List<Meal> meals =
        DUMMY_MEALS.where((item) => item.isFavourite == true).toList();
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // setState(() {
            //   print(DUMMY_MEALS
            //       .map((e) => "title:${e.title} and favourite:${e.isFavourite}")
            //       .toList());
            // });
          },
          child: Text("Updater"),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return MealItem(
                id: meals[index].id,
                title: meals[index].title,
                imageUrl: meals[index].imageUrl,
                duration: meals[index].duration,
                affordability: meals[index].affordability,
                complexity: meals[index].complexity,
              );
            },
          ),
        ),
      ],
    );
  }
}
