import 'package:flutter/material.dart';
//import 'package:mealapp/Screens/categories_screen.dart';

import './Screens/filterscreen.dart';
import './Screens/tab_screen.dart';
import './Screens/meal_screen.dart';
//import './Screens/categories_screen.dart';
import './Screens/categorymeal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.pink,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
      ),
      routes: {
        TabsScreen.routeName: (ctx) => TabsScreen(),
        //CategoriesScreen.routeName :(ctx)=>CategoriesScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealScreen.routeName: (ctx) => MealScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("Foodielicious Xpress"),
//         ),
//       ),
//       body: ,
//     );
//   }
// }
