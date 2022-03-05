import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

import 'package:bmi_calculator/TipsPage.dart';
import'package:bmi_calculator/NutrationPage.dart';

const IconData fitness_center = IconData(0xe28d, fontFamily: 'MaterialIcons');
const ActiveCardColor = Color(0x10000000);
const BottomContainerColor = Color(0xFFEB1555);
const InactiveCardColor = Color(0xFF24263B);

class WorkoutPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workouts',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gymbackgound.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage('images/chest6.v1.png'),
                            ),
                            Text(
                              'CHEST',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage('images/back2.v1.png'),
                            ),
                            Text(
                              'BACK',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage('images/bicips3.v1.png'),
                            ),
                            Text(
                              'BICEPS',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('images/forearm1.v1.png'),
                          ),
                          Text(
                            'FOREARM',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      colour: ActiveCardColor,

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      functionality: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NutritionPage(
                              );
                            },
                          ),
                        );
                      },
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('images/shoulder2.v1.png'),
                          ),
                          Text(
                            'SHOULDERS',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      colour: ActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('images/tri2.v1.png'),
                          ),
                          Text(
                            'TRICEPS',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      colour: ActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage('images/frontleg2.v1.png'),
                            ),

                            Text(
                              'FRONT LEG',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage('images/backleg4.v1.png'),
                            ),
                            Text(
                              'BACK LEG',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
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
