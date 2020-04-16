import 'package:flutter/material.dart';

import '../Screens/drawerscreen.dart';
import '../Screens/categories_screen.dart';
import '../Models/meal.dart';
import './favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName ='/';

  final List<Meal> favoriteMeals;
  TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  List<Map<String, Object>> _pages;
  
 @override 
 void initState()
 {

  _pages=[
    {
      'page': CategoriesScreen(),
      'title': 'Category',
    },
    {
      'page': FavoriteScreen(widget.favoriteMeals),
      'title': 'Favourite',
    },
  ];
  super.initState();
 } 

  int _pageSelectIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _pageSelectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_pageSelectIndex]['title'],
        ),
      ),
      drawer: DrawerScreen(),
      body: _pages[_pageSelectIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _pageSelectIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(_pages[0]['title']),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(_pages[1]['title']),
        ),
      ]),
    );
  }
}
