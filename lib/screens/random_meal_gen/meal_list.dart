import 'package:flutter/material.dart';

import 'models/meal.dart';

class MealList extends StatelessWidget {
  final Meal meals;

  MealList({this.meals});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(meals.strMeal),
    );
  }
}
