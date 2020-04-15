import 'package:flutter/material.dart';
import 'package:mealapp/Models/dummy.dart';

class MealScreen extends StatelessWidget {
  static const String routeName = '/mealScreen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('${selectedMeal.title}')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
              height: 250,
              width: double.infinity,
            ),
            Container(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
            ),
            Container(
              width: 275,
              height: 225,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 2),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                  itemCount: selectedMeal.ingredients.length,
                  itemBuilder: (ctx, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 6,
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                        height: 30,
                        //color: Theme.of(context).primaryColor,
                        child: Text(
                          selectedMeal.ingredients[index],
                          style: Theme.of(context).textTheme.body1.copyWith(
                                fontSize: 18,
                                //color: Theme.of(context).accentColor,
                              ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Steps',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
            ),
            Container(
              width: 275,
              height: 225,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 2),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                  itemCount: selectedMeal.steps.length,
                  itemBuilder: (sctx, sindex) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(child: Text('# ${sindex+1}'),),
                          title: Text(
                            selectedMeal.steps[sindex],
                            style: Theme.of(context).textTheme.body1.copyWith(
                                  fontSize: 16,
                                  //color: Theme.of(context).accentColor,
                                ),
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
