import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import'card_content.dart';
import 'package:bmi_calculator/Results_page.dart';
import 'package:bmi_calculator/CaloriesPage.dart';
import 'package:bmi_calculator/WaterPage.dart';
import 'package:bmi_calculator/TipsPage.dart';
import'package:bmi_calculator/NutrationPage.dart';
import'package:bmi_calculator/WorkoutPage.dart';



const IconData fitness_center = IconData(0xe28d, fontFamily: 'MaterialIcons');
const ActiveCardColor = Color(0x90000000);
const BottomContainerColor = Color(0x90EB1555);
const InactiveCardColor = Color(0x9040DDCB);

class ChoicePage extends StatelessWidget {

  ChoicePage({@required this.BMI,@required this.BmiResult,@required this.bmiadvice,@required this.calories,@required this.weight});
  final String BmiResult;
  final String BMI ;
  final String bmiadvice ;
  final String calories;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health Station',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginhomeimage.png'),
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
                      functionality: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Resultspage(
                                BmiResult: BmiResult,
                                BMI: BMI ,
                                bmiadvice: bmiadvice,
                                calories: calories,
                              );
                            },
                          ),
                        );
                      },
                      colour: ActiveCardColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Icon(
                            FontAwesomeIcons.weight,
                            size: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'BMI',
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
                      functionality: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CaloriesPage(
                                BMI: BMI ,
                                calories: calories,
                                weight:weight ,
                              );
                            },
                          ),
                        );

                      },
                      colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Icon(
                              FontAwesomeIcons.fire,
                              size: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'CALORIES',
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
                      functionality: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WaterPage(
                               weight: weight,
                              );
                            },
                          ),
                        );
                      },
                      colour: ActiveCardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Icon(
                              FontAwesomeIcons.water,
                              size: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'WATER',
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
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Icon(
                            Icons.lightbulb,
                            size: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'TIPS',
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
                          Icon(
                            FontAwesomeIcons.nutritionix,
                            size: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'NUTRITION',
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
                      functionality: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WorkoutPage(
                              );
                            },
                          ),
                        );
                      },
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Icon(
                            fitness_center,
                            size: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'WORKOUTS',
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
          ],
        ),
      ),
    );
  }
}
