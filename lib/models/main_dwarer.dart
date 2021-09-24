import 'package:flutter/material.dart';
import 'package:foodapp/Screens/filter_cat_screens.dart';

class MainDrawer extends StatelessWidget {
  Widget BuildTile(String title, IconData icon, VoidCallback TabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed'),
      ),
      onTap: TabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Text(
              'COOKING UP',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).accentColor),
            ),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(
            height: 20,
          ),
          BuildTile(
            "Meals",
            Icons.settings,
            () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          BuildTile(
            "Filters",
            Icons.restaurant,
            () {
              Navigator.of(context).pushNamed(FilterScreen.routename);
            },
          ),
        ],
      ),
    );
  }
}
