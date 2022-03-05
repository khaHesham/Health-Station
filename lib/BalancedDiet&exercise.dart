import 'package:flutter/material.dart';

class BalancedDietExercise extends StatelessWidget {
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
                  title: Text('Balanced diet and exercise, the perfect tandem'),
                  background: Image(
                    image: AssetImage('images/dait&exercise.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('Make it on your calender, introduce it into your daily routine ,So that the excuses of our day to day can not do it. The practice of physical exercise on a regular basis will help you improve your fitness and your health. In addition, it generates endorphins and brings well-being. Look for a sport that you like, that makes you enjoy and that you find it easy to introduce in your day to day.',
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
