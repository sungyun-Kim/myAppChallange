class Meal {
  final String strMeal;
  final String strCategory;
  final String strInstructions;
  final String strYoutube;
  final String strMealThumb;

  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final String strIngredient7;
  final String strIngredient8;
  final String strIngredient9;
  final String strIngredient10;
  final String strIngredient11;
  final String strIngredient12;
  final String strIngredient13;
  final String strIngredient14;
  final String strIngredient15;
  final String strIngredient16;
  final String strIngredient17;
  final String strIngredient18;
  final String strIngredient19;
  final String strIngredient20;

  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  final String strMeasure6;
  final String strMeasure7;
  final String strMeasure8;
  final String strMeasure9;
  final String strMeasure10;
  final String strMeasure11;
  final String strMeasure12;
  final String strMeasure13;
  final String strMeasure14;
  final String strMeasure15;
  final String strMeasure16;
  final String strMeasure17;
  final String strMeasure18;
  final String strMeasure19;
  final String strMeasure20;

  Meal({
    this.strMeal,
    this.strCategory,
    this.strInstructions,
    this.strYoutube,
    this.strMealThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
  });

  factory Meal.fromJson(Map<String, dynamic> parsedJson) {
    return Meal(
      strMeal: parsedJson['strMeal'],
      strCategory: parsedJson['strCategory'],
      strInstructions: parsedJson['strInstructions'],
      strYoutube: parsedJson['strYoutube'],
      strMealThumb: parsedJson['strMealThumb'],
      strIngredient1: parsedJson['strIngredient1'],
      strIngredient2: parsedJson['strIngredient2'],
      strIngredient3: parsedJson['strIngredient3'],
      strIngredient4: parsedJson['strIngredient4'],
      strIngredient5: parsedJson['strIngredient5'],
      strIngredient6: parsedJson['strIngredient6'],
      strIngredient7: parsedJson['strIngredient7'],
      strIngredient8: parsedJson['strIngredient8'],
      strIngredient9: parsedJson['strIngredient9'],
      strIngredient10: parsedJson['strIngredient10'],
      strIngredient11: parsedJson['strIngredient11'],
      strIngredient12: parsedJson['strIngredient12'],
      strIngredient13: parsedJson['strIngredient13'],
      strIngredient14: parsedJson['strIngredient14'],
      strIngredient15: parsedJson['strIngredient15'],
      strIngredient16: parsedJson['strIngredient16'],
      strIngredient17: parsedJson['strIngredient17'],
      strIngredient18: parsedJson['strIngredient18'],
      strIngredient19: parsedJson['strIngredient19'],
      strIngredient20: parsedJson['strIngredient20'],
      strMeasure1: parsedJson['strMeasure1'],
      strMeasure2: parsedJson['strMeasure2'],
      strMeasure3: parsedJson['strMeasure3'],
      strMeasure4: parsedJson['strMeasure4'],
      strMeasure5: parsedJson['strMeasure5'],
      strMeasure6: parsedJson['strMeasure6'],
      strMeasure7: parsedJson['strMeasure7'],
      strMeasure8: parsedJson['strMeasure8'],
      strMeasure9: parsedJson['strMeasure9'],
      strMeasure10: parsedJson['strMeasure10'],
      strMeasure11: parsedJson['strMeasure11'],
      strMeasure12: parsedJson['strMeasure12'],
      strMeasure13: parsedJson['strMeasure13'],
      strMeasure14: parsedJson['strMeasure14'],
      strMeasure15: parsedJson['strMeasure15'],
      strMeasure16: parsedJson['strMeasure16'],
      strMeasure17: parsedJson['strMeasure17'],
      strMeasure18: parsedJson['strMeasure18'],
      strMeasure19: parsedJson['strMeasure19'],
      strMeasure20: parsedJson['strMeasure20'],
    );
  }
}
