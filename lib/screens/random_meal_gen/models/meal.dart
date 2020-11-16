class Meal {
  final String strMeal;
  final String strCategory;
  final String strInstructions;
  final String strYoutube;

  Meal({this.strMeal, this.strCategory, this.strInstructions, this.strYoutube});

  factory Meal.fromJson(Map<String, dynamic> parsedJson) {
    return Meal(
      strMeal: parsedJson['strMeal'],
      strCategory: parsedJson['strCategory'],
      strInstructions: parsedJson['strInstructions'],
      strYoutube: parsedJson['strYoutube'],
    );
  }
}
