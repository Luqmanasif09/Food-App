import 'package:flutter/material.dart';
import 'package:foodapp/Screens/filter_cat_screens.dart';
import '/Screens/categorey_screens.dart';
import 'Screens/cat_recipe_screens.dart';
import 'Screens/meal_data_screens.dart';
import 'Screens/tab_cat_screens.dart';

void main() {
  runApp(Food());
}

class Food extends StatefulWidget {
  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  Map<String, bool> Filter_list = {
    'Lactose': false,
    'Glutin': false,
    'Vegan': false,
    'Vegetarian': false,
  };

  void Filter_data(Map<String, bool> filters_data) {
    setState(() {
      Filter_list = filters_data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Categorey_screen(),
      title: 'Food App',
      theme: ThemeData(
        accentColor: Colors.amber,
        primarySwatch: Colors.pink,
        fontFamily: 'Raleway',
      ),
      routes: {
        '/': (ctx) => TabScreen(),
        '/recipe-screen': (ctx) => recipe(),
        '/Meal-detail': (ctx) => Mealdata(),
        '/filters': (ctx) => FilterScreen(Filter_data),
      },
    );
  }
}
