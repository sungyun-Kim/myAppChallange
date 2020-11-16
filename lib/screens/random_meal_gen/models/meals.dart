import 'package:mychallange/screens/random_meal_gen/models/meal.dart';

class Meals {
  Meal meal;

  Meals({this.meal});

  factory Meals.fromJson(Map<String, dynamic> json) {
    return Meals(
      meal: json['meals'],
    );
  }
}
