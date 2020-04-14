import 'package:flutter/material.dart';
//import '../Models/meal.dart';

class ExtraInfoBelowImage extends StatelessWidget {
  final IconData icon;
  final String text;

  ExtraInfoBelowImage({this.icon,this.text});

 
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 20,
      child: Row(
        children: <Widget>[
        Icon(icon),
        SizedBox(width: 5,),
        Text(text),
        ],
      ),
    );
  }
}