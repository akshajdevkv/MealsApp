import 'package:MealsApp/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;
  final Function refresh;
  MealItem(
      {this.id,
      this.duration,
      this.imageUrl,
      this.title,
      this.affordability,
      this.complexity,
      this.removeItem,
      this.refresh});
  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      '/meal-detail-screen',
      arguments: id,
    ).then((value){
      if (refresh != null){
        print("back to favourites!");
        refresh();
      }      
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 170,
                  child: Container(
                    width: 220,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
