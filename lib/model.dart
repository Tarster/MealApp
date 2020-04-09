import 'package:flutter/material.dart';

class Category{
  @required String id;
  @required String title;
  Color color;

  Category({
    @required this.id,
    @required this.title,
    this.color =Colors.red,
    });
}