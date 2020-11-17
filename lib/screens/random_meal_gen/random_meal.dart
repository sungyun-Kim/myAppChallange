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

                return Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          //photo
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.3,
                            padding: EdgeInsets.all(5),
                            child: Card(
                              child: Image.network(
                                meal.strMealThumb,
                                fit: BoxFit.contain,
                              ),
                              elevation: 5,
                            ),
                          ),
                          //category
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Category: " + meal.strCategory),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 70, 20, 20),
                            child: Expanded(
                              child: Text(
                                meal.strMeal,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
