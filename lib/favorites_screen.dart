
import 'package:flutter/material.dart';
import './mealitem.dart';

class Favourites extends StatefulWidget {
  final List favouriteMeals;
  Favourites(this.favouriteMeals);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {

  void refreshPage(){
    setState(() {
      print("page refreshed!");
    });
  }
  @override
  Widget build(BuildContext context) {
    if (widget.favouriteMeals.isEmpty){
      return Center(
      child: Text("Favourites!"),      
    );

    }
    else{
      return ListView.builder(
          itemCount: widget.favouriteMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              id: widget.favouriteMeals[index].id,
              title: widget.favouriteMeals[index].title,
              imageUrl: widget.favouriteMeals[index].imageUrl,
              duration: widget.favouriteMeals[index].duration,
              affordability: widget.favouriteMeals[index].affordability,
              complexity: widget.favouriteMeals[index].complexity,
              refresh: refreshPage,       
            );
          },
        );

    }
    
  }
}