import 'package:flutter/material.dart';

class LifeStyle extends StatelessWidget {
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
                  title: Text('Make it a lifestyle not just a diet that will end some day'),
                  background: Image(
                    image: AssetImage('images/healthylifestyle.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('Start a lifestyle that lasts forever. Look for a healthy and balanced diet and lifestyle according to your tastes, Your habits, lifestyle and goals. In this way you will ensure that it is a lasting food over time.',
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
