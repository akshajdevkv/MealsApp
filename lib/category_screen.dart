import 'package:flutter/material.dart';
import 'package:MealsApp/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  void selectCategory(BuildContext context, String title, String id) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (context) {
    //     return CategoryMealsScreen(title);
    //   },
    // ));
    Navigator.of(context)
        .pushNamed('/category-meals', arguments: {'title': title, 'id': id});
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      children: DUMMY_CATEGORIES.map((catData) {
        return InkWell(
          splashColor: Colors.orange,
          onTap: () => selectCategory(context, catData.title, catData.id),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [catData.color.withOpacity(0.7), Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              "${catData.title}",
              style: TextStyle(
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w200,
                fontSize: 20,
              ),
            ),
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
          ),
        );
      }).toList(),
    );
  }
}
