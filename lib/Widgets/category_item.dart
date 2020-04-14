import 'package:flutter/material.dart';

import './categorymeal_screen.dart';

class CategoryList extends StatelessWidget {
  final String title;
  final Color color;

  CategoryList(this.title, this.color);

  void selectCategory(BuildContext ctx)
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder:(_)
    {
        return CategoryMealScreen();
    }),
    );
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        //color: color,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
