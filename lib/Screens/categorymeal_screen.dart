import 'package:flutter/material.dart';
//import 'package:mealapp/Models/dummy.dart';
import '../Models/meal.dart';
import '../Widgets/meal_items.dart';


class CategoryMealScreen extends StatelessWidget {
  static const String routeName = 'CategoryMealScreen';
  final List<Meal> availableMeals;
  CategoryMealScreen(this.availableMeals);
  //CategoryMealScreen(this.id,this.title);

  @override
  Widget build(BuildContext context) {
    
    final routeargs =ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String id = routeargs['id'];
    final String title = routeargs['title'];
    final meals = availableMeals.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id : meals[index].id,
              title: meals[index].title,
              imageUrl: meals[index].imageUrl,
              duration: meals[index].duration,
              complexity: meals[index].complexity,
              affordability: meals[index].affordability);
        },
        itemCount: meals.length,
      ),
    );
  }
}
