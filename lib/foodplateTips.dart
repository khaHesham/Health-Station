import 'package:flutter/material.dart';

class FoodPlate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 160.0,
              flexibleSpace: const FlexibleSpaceBar(
                  title: Text('Your food plate preference'),
                  background: Image(
                    image: AssetImage('images/food_dish.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,
                  child: Center(
                    child: Text('I advise you to keep in mind the dish method that will help you ensure that they are balanced, several and to delimit quantities. Always give preference, with half of your plate, to both raw and cooked vegetables. With salads the amount ingested is not usually enough, so you should not forget to also consume vegetables. A quarter of a plate should be protein in the form of egg, meat, fish, seafood, vegetable protein or legume. The other quarter of the plate should be composed of carbohydrates such as pasta, rice, potato or bread. The dessert can be a piece of fruit or a dairy dessert.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
