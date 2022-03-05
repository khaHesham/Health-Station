import 'package:flutter/material.dart';

class EnvironmentTips extends StatelessWidget {
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
                  title: Text('Improve your environment'),
                  background: Image(
                    image: AssetImage('images/refrigerator.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('lean the pantry. The presence at home of healthy foods increases the chance of success. It could be said that it is a determining factor of short and long-term of success. if you have nothing prepared and you have to improvise, having unhealthy foods in your pantry or refrigerator will make it difficult for you to eat well or eat what you had in mind.',
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
