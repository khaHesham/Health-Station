import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'package:bmi_calculator/CaloriesResult.dart';

const ActiveCardColor = Color(0x30323244);
const BottomContainerColor = Color(0x90EB1555);
const InactiveCardColor = Color(0x9024263B);

enum ActivityLevel {
  non,
  low,
  medium,
  high,
  very_high,
}

enum Condition {
  non,
  Go_down,
  Go_up,
  keep,
}

class CaloriesPage extends StatefulWidget {
  final String BMI;
  final String calories;
  final int weight;
  CaloriesPage(
      {@required this.BMI, @required this.calories, @required this.weight});

  @override
  _CaloriesPageState createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {
  double cal;

  ActivityLevel activity=ActivityLevel.non;
  Condition type=Condition.non;

  double protein;
  double carbs;
  double fats;

  void exactCalories_Macros(
      ActivityLevel activitylevel, Condition condition) {
    cal = double.parse(widget.calories);
    double weight_lb = widget.weight * 2.205;

    if (activitylevel == ActivityLevel.low) {
      cal = 1.2 * cal;
    } else if (activitylevel == ActivityLevel.medium) {
      cal = 1.3 * cal;
    } else if (activitylevel == ActivityLevel.high) {
      cal = cal * 1.5;
    } else //activity level = very high
    {
      cal = cal * 1.7;
    }
    //***********************************Condition************************

    if (condition == Condition.Go_down) {
      if (widget.BMI == 'Obesity') {
        cal = cal - 700;
        protein = weight_lb * 0.9;
        fats = weight_lb * 0.35;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } else if (widget.BMI == 'Overweight') {
        cal = cal - 500;
        protein = weight_lb * 0.9;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } else if (widget.BMI == 'Underweight') {
        cal = cal - 300;
        protein = weight_lb * 1;
        fats = weight_lb * 0.45;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } // Normal
      else {
        cal = cal - 400;
        protein = weight_lb * 0.9;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      }
    } else if (condition == Condition.keep) {
      if (widget.BMI == 'Obesity') {
        cal = cal * 1;
        protein = weight_lb * 0.9;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } else if (widget.BMI == 'Overweight') {
        cal = cal * 1;
        protein = weight_lb * 0.9;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } else if (widget.BMI == 'Underweight') {
        cal = cal * 1;
        protein = weight_lb * 1;
        fats = weight_lb * 0.5;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } // Normal
      else {
        cal = cal * 1;
        protein = weight_lb * 0.9;
        fats = weight_lb * 0.5;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      }
    } else //Go up
    {
      if (widget.BMI == 'Obesity') {
        cal = cal + 300;
        protein = weight_lb * 1.1;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } else if (widget.BMI == 'Overweight') {
        cal = cal + 400;
        protein = weight_lb * 1.1;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } else if (widget.BMI == 'Underweight') {
        cal = cal + 700;
        protein = weight_lb * 1.05;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      } // Normal
      else {
        cal = cal + 500;
        protein = weight_lb * 1.05;
        fats = weight_lb * 0.4;
        carbs = (cal - (protein * 4 + fats * 9)) / 4;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calories',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      functionality: () {
                        setState(() {
                          type = Condition.Go_down;
                        });
                      },
                      colour: type == Condition.Go_down
                          ? ActiveCardColor
                          : Color(0x901D2136),
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('images/go_down.png'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Go Down',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      functionality: () {
                        setState(() {
                          type = Condition.keep;
                        });
                      },
                      colour: type == Condition.keep
                          ? ActiveCardColor
                          : Color(0x901D2136),
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('images/keep_mod.png'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Keep',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      functionality: () {
                        setState(() {
                          type = Condition.Go_up;
                        });
                      },
                      colour: type == Condition.Go_up
                          ? ActiveCardColor
                          : Color(0x901D2136),
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('images/go_up.png'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Go up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'ACTIVITY LEVEL : ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
              child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            activity = ActivityLevel.low;
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: activity == ActivityLevel.low
                              ? ActiveCardColor
                              : InactiveCardColor,
                        ),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'LOW',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            activity = ActivityLevel.medium;
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: activity == ActivityLevel.medium
                              ? ActiveCardColor
                              : InactiveCardColor,
                        ),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'MEDIUM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0,
                              color:Colors.green ,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            activity = ActivityLevel.high;
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: activity == ActivityLevel.high
                              ? ActiveCardColor
                              : InactiveCardColor,
                        ),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'HIGH',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            activity = ActivityLevel.very_high;
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: activity == ActivityLevel.very_high
                              ? ActiveCardColor
                              : InactiveCardColor,
                        ),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'VERY HIGH',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if(activity!=ActivityLevel.non && type!= Condition.non)
                  {
                    exactCalories_Macros(activity,type);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CaloriesResult(
                              cal: cal,
                              protein: protein,
                              carbs: carbs,
                              fats: fats,
                            );
                          },
                        ),
                    );
                  }
              },
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                ),
                height: BottomContainerHeight,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                color: BottomContainerColor,
                child: Center(
                  child: Icon(
                    Icons.double_arrow_outlined,
                    size: 50,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
