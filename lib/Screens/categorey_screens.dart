import 'package:flutter/material.dart';
import 'package:foodapp/models/dummy_datas.dart';
import 'categorey_grids.dart';

class Categorey_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      children: DUMMY_CATEGORIES
          .map((data) => Item(
                Col: data.color,
                title: data.title,
                id: data.id,
              ))
          .toList(),
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
    );
  }
}
