import 'package:flutter/material.dart';
import './dummy_data.dart';

class MealDetailScreen extends StatefulWidget {
  @override
  _MealDetailScreenState createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context).settings.arguments as String;
    var selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.network(selectedMeal.imageUrl),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 300,
                child: Card(
                  child: ListView(
                    children: selectedMeal.ingredients.map(
                      (ingredient) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            '$ingredient',
                            style: TextStyle(fontSize: 20),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            print(selectedMeal.isFavourite);
            selectedMeal.isFavourite = !selectedMeal.isFavourite;
          });
        },
        child: Icon(selectedMeal.isFavourite ? Icons.star : Icons.star_border),
      ),
    );
  }
}
