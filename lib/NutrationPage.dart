import 'package:flutter/material.dart';
import 'reusable_card.dart';

import 'package:bmi_calculator/TipsPage.dart';
import'package:bmi_calculator/FoodsPage.dart';
import'package:bmi_calculator/SupplementsPage.dart';

const ActiveCardColor = Color(0xFF323244);
const BottomContainerColor = Color(0xFFEB1555);
const InactiveCardColor = Color(0xFF24263B);
const backgroundColor = Color(0xFF1D2136);

class NutritionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nutrition',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/food background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                                return FoodPage(
                                );
                              },
                            ),
                          );
                        },
                        colour: Color(0x70323244),
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.food_bank,
                              size: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'FOOD',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0x70323244),
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.next_plan_sharp ,
                            size: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'DIET PLANS',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
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
                                return Supplementspage(
                                );
                              },
                            ),
                          );
                        },
                        colour: Color(0x70323244),
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Center(
                                child: Image(
                                  height: 90,
                                  width: 90,
                                  image:AssetImage('images/supplementswhite.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'SUPPLEMENTS',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: ReusableCard(
                        functionality: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return TipsPage(
                                );
                              },
                            ),
                          );
                        },
                        colour: Color(0x70323244),
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lightbulb,
                              size: 90,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'TIPS',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
