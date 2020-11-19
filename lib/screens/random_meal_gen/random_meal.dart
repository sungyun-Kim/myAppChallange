import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mychallange/screens/random_meal_gen/models/meal.dart';

Future<List<Meal>> fetchPost() async {
  final response =
      await http.get('https://www.themealdb.com/api/json/v1/1/random.php');

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.

    final parsed = response.body;

    var mealJson = jsonDecode(parsed)['meals'] as List;
    List resultMeal = mealJson.map((mealJs) => Meal.fromJson(mealJs)).toList();
    return resultMeal;
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

class RandomMealGen extends StatefulWidget {
  @override
  _RandomMealGenState createState() => _RandomMealGenState();
}

class _RandomMealGenState extends State<RandomMealGen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RandomMealGen',
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.refresh),
              tooltip: 'refresh',
              onPressed: () {
                setState(() {
                  fetchPost();
                });
              },
            ),
            new IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          title: Text('RandomMealGen'),
        ),
        body: Container(
          child: FutureBuilder(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print("err: " + snapshot.error.toString());

              if (snapshot.hasData) {
                //to-do
                //add image by url
                //add ingredients
                //add instructions
                //add recipe

                Meal meal = snapshot.data[0];

                List<String> recipe = [];

                recipe.add(meal.strIngredient1 + ": " + meal.strMeasure1);
                recipe.add(meal.strIngredient2 + ": " + meal.strMeasure2);
                recipe.add(meal.strIngredient3 + ": " + meal.strMeasure3);

                return Container(
                  padding: EdgeInsets.all(20),
                  child: ListView(
                    children: <Widget>[
                      Card(
                        elevation: 4,
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                //photo
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  padding: EdgeInsets.all(5),
                                  child: Card(
                                    child: Image.network(
                                      meal.strMealThumb,
                                      fit: BoxFit.cover,
                                    ),
                                    elevation: 5,
                                  ),
                                ),
                                //category
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[],
                                  ),
                                )
                              ],
                            ),
                            Flexible(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 30, 20, 20),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: Text(
                                            meal.strMeal,
                                            softWrap: true,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: Text(
                                            "Category: " + meal.strCategory,
                                            softWrap: true,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: getRecipe(context, recipe),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Text(
                                'Instructions',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Text(
                              meal.strInstructions,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                      )
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

List<Widget> getRecipe(BuildContext context, List<String> recipe) {
  List<Widget> result = [];

  result.add(
    Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Text(
        'Ingredients & Measurement',
        style: TextStyle(fontSize: 24),
      ),
    ),
  );

  for (var i = 0; i < recipe.length; i++) {
    result.add(
      Text(
        recipe[i],
      ),
    );
  }

  return result;
}
