import 'package:flutter/material.dart';
import 'package:foodapp/models/intgre_data_samples.dart';

import 'package:foodapp/Screens/meal_data_screens.dart';

class Ingredients extends StatelessWidget {
  final String Imgurl;
  final int duration;
  final Complexity Comp;
  final Affordability Aff;
  final String title;
  final String Id;

  Ingredients(
      {required this.Imgurl,
      required this.Comp,
      required this.duration,
      required this.title,
      required this.Aff,
      required this.Id});

  String get ComplexityTest {
    switch (Comp) {
      case Complexity.Challenging:
        return "Challenging";
      case Complexity.Hard:
        return "Hard";
      case Complexity.Simple:
        return "Simple";
      default:
        return "Unknown";
    }
  }

  String get AffordabilityTest {
    switch (Aff) {
      case Affordability.Affordable:
        return "Affordable";
      case Affordability.Luxurious:
        return "Luxurious";
      case Affordability.Pricey:
        return "Pricey";
      default:
        return "Unknown";
    }
  }

  void select_meal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(Mealdata.Routename, arguments: Id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => select_meal(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    Imgurl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 250,
                    color: Colors.black54,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'Rale-way'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(8)),
                      const Icon(Icons.schedule),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$duration min'.toString(),
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(12)),
                      const Icon(Icons.work),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        ComplexityTest,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      const Icon(Icons.monetization_on_rounded),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        AffordabilityTest,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
