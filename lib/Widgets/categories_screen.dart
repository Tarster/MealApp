
import 'package:flutter/material.dart';


import '../Models/dummy.dart';
//import '../Models/model.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView( 
      padding: EdgeInsets.all(10),
      children: DUMMY_CATEGORIES.map((category)=> CategoryList(category.title,category.color)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20),
    );
  }
}
