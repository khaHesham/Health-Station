import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'metapolismTips.dart';
import'SupplementsTips.dart';
import'package:bmi_calculator/VitaminsTips.dart';
import'package:bmi_calculator/LifeStyle.dart';
import'package:bmi_calculator/LowBudgetSupplementsTips.dart';
import 'BalancedDiet&exercise.dart';
import'environmentTips.dart';
import'package:bmi_calculator/FreshFoodTips.dart';
import'foodplateTips.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tips',
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MetapolismTips(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('How to accelerate your metabolism?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                      decoration: BoxDecoration(
                        color: Color(0X80131313)
                      ),
                    ),
                  ),
                 decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage('images/food1.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SupplementsTips(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('How to choose your supplements?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/supplements.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return VitaminsTips(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('Vitamins and minerals',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/vitamins.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LifeStyle(
                        );
                      },
                    ),
                  );
                },
                child:Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('Make it a lifestyle not just a diet that will end some day',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/healthylifestyle.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return lowbudget(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('The 4 supplements that you should consume if you have low budget',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/shaker.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BalancedDietExercise(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('Balanced diet and exercise, the perfect tandem',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/dait&exercise.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return EnvironmentTips(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('Improve your environment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/refrigerator.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FrishFood(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('Buy fresh food from the market',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/freshfood.png'),fit: BoxFit.cover)
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FoodPlate(
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment:Alignment.bottomCenter ,
                      child:Text('Your food plate preference',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      decoration: BoxDecoration(
                          color: Color(0X80131313)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage('images/food_dish.png'),fit: BoxFit.cover)
                  ),
                ),
              ),


            ],
          ),
      ),
    );
  }
}
