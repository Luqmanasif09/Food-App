// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodapp/models/dummy_datas.dart';

class Mealdata extends StatelessWidget {
  static const Routename = '/Meal-detail';

  Widget buildContainer(String S) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        S,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget BuildMeal(Widget Child) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 180,
        width: 300,
        child: Child);
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context)!.settings.arguments as String;
    final Data = DUMMY_MEALS.firstWhere((tx) => tx.id == mealid);
    return Scaffold(
      appBar: AppBar(title: Text(Data.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 302,
              width: double.infinity,
              child: Image.network(
                Data.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildContainer("Ingredients"),
            BuildMeal(
              ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Card(
                        color: Colors.amber,
                        child: Text(
                          Data.ingredients[index],
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    );
                  },
                  itemCount: Data.ingredients.length),
            ),
            buildContainer("Steps"),
            BuildMeal(
              ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('# ${index + 1}'),
                  ),
                  title: Text(Data.steps[index]),
                ),
                itemCount: Data.steps.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
