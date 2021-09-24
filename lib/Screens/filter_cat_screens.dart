import 'package:flutter/material.dart';
import 'package:foodapp/models/main_dwarer.dart';

class FilterScreen extends StatefulWidget {
  static const routename = '/filters';
  final Function Filters;

  FilterScreen(this.Filters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool Is_lactose = false;
  bool Is_vege = false;
  bool is_gluten = false;
  bool is_vergatrain = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          IconButton(
            onPressed: () {
              widget.Filters;
            },
            icon: const Icon(Icons.save_outlined),
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Adjust your meal selection!!..",
              style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: const Text(
                    "Gluten",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    "only Gluten meal",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  value: is_gluten,
                  onChanged: (tx) {
                    setState(
                      () {
                        is_gluten = tx;
                      },
                    );
                  },
                ),
                SwitchListTile(
                  title: const Text(
                    "Lactose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    "only Lactose meal",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  value: Is_lactose,
                  onChanged: (tx) {
                    setState(
                      () {
                        Is_lactose = tx;
                      },
                    );
                  },
                ),
                SwitchListTile(
                  title: const Text(
                    "vergatrain",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    "only vergatrain meal",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  value: is_vergatrain,
                  onChanged: (tx) {
                    setState(
                      () {
                        is_vergatrain = tx;
                      },
                    );
                  },
                ),
                SwitchListTile(
                  title: const Text(
                    "Vege",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    "only Vege meal",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  value: Is_vege,
                  onChanged: (tx) {
                    setState(
                      () {
                        Is_vege = tx;
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Filters {}
