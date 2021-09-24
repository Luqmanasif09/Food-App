import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String? title;
  final Color? Col;
  final String? id;

  Item({this.Col, this.title, this.id});

  void Next_Screen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/recipe-screen',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Next_Screen(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 200,
        child: Text(
          title!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Col!.withOpacity(0.7),
              Col!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
