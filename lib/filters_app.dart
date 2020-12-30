import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool glutenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool lactosFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Gluten Free"),
            trailing: Switch(
              onChanged: (value) {
                setState(
                  () {
                    glutenFree = value;
                    print("gluten free set to $glutenFree");
                  },
                );
              },
              value: glutenFree,
              activeColor: Colors.red,
              activeTrackColor: Colors.red[200],
            ),
          ),
          ListTile(
            title: Text("Vegetarian"),
            trailing: Switch(
              onChanged: (value) {
                setState(
                  () {
                    vegetarian = value;
                    print("vegeterian free set to $vegetarian");
                  },
                );
              },
              value: vegetarian,
              activeColor: Colors.green,
              activeTrackColor: Colors.green[200],
            ),
          ),
          ListTile(
            title: Text("Vegan"),
            trailing: Switch(
              onChanged: (value) {
                setState(
                  () {
                    vegan = value;
                    print("vegan set to $vegan");
                  },
                );
              },
              value: vegan,
              activeColor: Colors.yellow,
              activeTrackColor: Colors.yellow[200],
            ),
          ),
          ListTile(
            title: Text("Lactos Free"),
            trailing: Switch(
              onChanged: (value) {
                setState(
                  () {
                    lactosFree = value;
                    print("lactos free set to $glutenFree");
                  },
                );
              },
              value: lactosFree,
              activeColor: Colors.blue,
              activeTrackColor: Colors.blue[200],
            ),
          )
        ],
      ),
    );
  }
}
