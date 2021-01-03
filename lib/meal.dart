import 'package:flutter/material.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  @required
  final String id;
  @required
  final List<String> categories;
  @required
  final String title;
  @required
  final String imageUrl;
  @required
  final List<String> ingredients;
  @required
  final List<String> steps;
  @required
  final int duration;
  @required
  final bool isGlutenFree;
  @required
  final bool isLactoseFree;
  @required
  final isFavourite;
  @required
  final bool isVegetarian;
  @required
  final Complexity complexity;
  @required
  final Affordability affordability;

const Meal({
    this.categories,
    this.duration,
    this.imageUrl,
    this.ingredients,
    this.isGlutenFree,
    this.isLactoseFree,
    this.isFavourite,
    this.isVegetarian,
    this.steps,
    this.title,
    this.affordability,
    this.complexity,
    this.id,
  });
}
