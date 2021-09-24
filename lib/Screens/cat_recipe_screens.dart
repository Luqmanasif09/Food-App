import 'package:flutter/material.dart';
import 'package:foodapp/models/dummy_datas.dart';
import 'package:foodapp/models/intgre_data_samples.dart';
import 'cat_meal_screens.dart';

class recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes_arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;

    final title = routes_arg['title'];
    final id = routes_arg['id'];

    final Meal_data = DUMMY_MEALS.where((data) {
      return data.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Ingredients(
            Id: Meal_data[index].id,
            Imgurl: Meal_data[index].imageUrl,
            Comp: Meal_data[index].complexity,
            duration: Meal_data[index].duration,
            title: Meal_data[index].title,
            Aff: Meal_data[index].affordability,
          );
        },
        itemCount: Meal_data.length,
      ),
    );
  }
}
