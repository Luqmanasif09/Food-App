// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:foodapp/Screens/categorey_screens.dart';
import 'package:foodapp/Screens/favourite_cat_screens.dart';
import 'package:foodapp/models/main_dwarer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _Pages = [
    Categorey_screen(),
    Favourite(),
  ];
  final List<String> _list = ["Categories", "My Favourite"];

  int _select_index = 0;

  void Changed(int index) {
    setState(() {
      _select_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_list[_select_index]),
      ),
      drawer: MainDrawer(),
      body: _Pages[_select_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: Changed,

        unselectedItemColor: Colors.white,
        currentIndex: _select_index,
        selectedItemColor: Theme.of(context).accentColor,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categorey'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favourite'),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
