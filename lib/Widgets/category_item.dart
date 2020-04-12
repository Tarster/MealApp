import 'package:flutter/material.dart';


class CategoryList extends StatelessWidget {
  final String title;
  final Color color;

  CategoryList(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(title),
      //color: color,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
