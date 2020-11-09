import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mychallange/screens/random_meal_gen/meal_list.dart';
import 'package:mychallange/screens/random_meal_gen/models/meal.dart';

Future<Meal> fetchMeal() async {
  final response =
      await http.get('https://www.themealdb.com/api/json/v1/1/random.php');

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.

    print(Meal.fromJson(json.decode(response.body)));
    return Meal.fromJson(json.decode(response.body));
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

Future<List<Meal>> fetchMeals(http.Client client) async {
  final response =
      await http.get('https://www.themealdb.com/api/json/v1/1/random.php');

  if (response.statusCode == 200) {
    return parseMeals(response.body);
  } else {
    print('err!!!');
  }
}

List<Meal> parseMeals(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return parsed.map<Meal>((json) => Meal.fromJson(json)).toList();
}

class RandomMealGen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RandomMealGen',
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
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
            future: fetchMeals(http.Client()),
            builder: (context, snapshot) {
              if (snapshot.hasError) print("err");

              return snapshot.hasData
                  ? MealList(meals: snapshot.data)
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Loading'),
                          CircularProgressIndicator(),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
