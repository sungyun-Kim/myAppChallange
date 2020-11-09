class Meal {
  final String strMeal;
  final String strCategory;
  final String strInstructions;
  final String strYoutube;

  Meal({this.strMeal, this.strCategory, this.strInstructions, this.strYoutube});

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      strMeal: json['strMeal'] as String,
      strCategory: json['strCategory'] as String,
      strInstructions: json['strInstructions'] as String,
      strYoutube: json['strYoutube'] as String,
    );
  }
}
