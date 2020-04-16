import 'package:flutter/material.dart';
import 'package:mealapp/Screens/tab_screen.dart';

//import '../Screens/categories_screen.dart';
import '../Screens/filterscreen.dart';

class DrawerScreen extends StatelessWidget {
  Widget listView({String text, IconData icon, Function fun}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
        ),
      ),
      onTap: fun,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Menu',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listView(
              text: 'Home',
              icon: Icons.restaurant,
              fun: () {
                Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
              }),
          listView(
              text: 'Setting',
              icon: Icons.settings,
              fun: () {
                Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
              }),
        ],
      ),
    );
  }
}
