import 'package:flutter/material.dart';

class Category{
  @required final String id;
  @required final String title;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    this.color =Colors.red,
    });
}