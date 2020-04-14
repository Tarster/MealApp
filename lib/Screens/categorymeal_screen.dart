import 'package:flutter/material.dart';

import '../Models/dummy.dart';

class CategoryMealScreen extends StatelessWidget {
  static const String routeName='CategoryMealScreen';


  //CategoryMealScreen(this.id,this.title);

   
  @override
  
  Widget build(BuildContext context) {
    
  final routeargs =ModalRoute.of(context).settings.arguments as Map<String,String>;
  
  final String id =routeargs['id'];
  final String title =routeargs['title'];
  final meals =DUMMY_MEALS.where((meal){
    return meal.categories.contains(id);
  }).toList();
      
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(title,)),
      ),
      body: ListView.builder(itemBuilder: (ctx,index) {

        return Text(meals[index].title);

      },
      itemCount: meals.length,),
    );
  }
}