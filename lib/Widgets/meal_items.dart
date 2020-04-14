import 'package:flutter/material.dart';
import '../Widgets/ExtraInforBelowImage.dart';
import '../Models/meal.dart';
import '../Screens/meal_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Hard:
        return 'Hard';
      case Complexity.Challenging:
        return 'Challenging';
    }
    return 'Null';
  }

  String get affordabilityText{
    switch(affordability)
    {
      case Affordability.Affordable: return 'Affordable';
      case Affordability.Pricey: return 'Pricey';
      case Affordability.Luxurious: return 'Luxurious';
    }
    return 'Null';
  }

  void selectMeal(BuildContext context) {
      Navigator.of(context).pushNamed(MealScreen.routeName,arguments:id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 5,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ExtraInfoBelowImage(
                      icon: Icons.schedule, text: '$duration min'),
                  ExtraInfoBelowImage(
                    icon: Icons.work,
                    text: complexityText,
                  ),
                  ExtraInfoBelowImage(
                    icon: Icons.attach_money,
                    text: affordabilityText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
