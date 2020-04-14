import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  static const String routeName ='/mealScreen';


  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    //final String id =routeargs['id'];
    // print(id);

    return Scaffold(
      appBar: AppBar(title: Text('Yo Bitch'),),
      body: Text(id),
    );
  }
}