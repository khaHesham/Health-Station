import 'package:flutter/material.dart';

class FrishFood extends StatelessWidget {
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
                  title: Text('Buy fresh food from the market'),
                  background: Image(
                    image: AssetImage('images/freshfood.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('Reserve an hour a week to get closer to the market to buy seasonal products. Put aside the calculations of the total calories you consume, Food not only feeds us but nourishes us. You must think of food as a set of nutrients that will help the body to function properly. So focus on choosing foods of good nutritional quality. ',
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
