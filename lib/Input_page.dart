import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';
import 'Results_page.dart';
import 'package:bmi_calculator/CalculatorBrain.dart';
import'package:bmi_calculator/Screen3.dart';

const BottomContainerHeight = 60.0;
const ActiveCardColor = Color(0x9040DDCB);
const BottomContainerColor = Color(0x90EB1555);
const InactiveCardColor = Color(0x90000000);

const TextStyleHeight = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
);

enum Gender {
  Male,
  Female,
  Non,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard=Gender.Non;
  int height = 150;
  int weight = 60;
  int age = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Station'),
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
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      functionality: () {
                        setState(() {
                          selectedCard = Gender.Male;
                        });
                      },
                      colour: selectedCard == Gender.Male
                          ? ActiveCardColor
                          : InactiveCardColor,
                      cardchild: IconContent(
                        text: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      functionality: () {
                        setState(() {
                          selectedCard = Gender.Female;
                        });
                      },
                      colour: selectedCard == Gender.Female
                          ? ActiveCardColor
                          : InactiveCardColor,
                      cardchild: IconContent(
                        text: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour:InactiveCardColor,
                      cardchild: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text(
                              'HEIGHT',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 100,
                              ),
                              Text(
                                '$height',
                                style: TextStyleHeight,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Text(
                                  'cm',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white54,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xFF8D8E98),
                                thumbColor: Color(0xFF40DDCB),
                                overlayColor: Color(0X2940DDCB),
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 20.0,
                                )),
                            child: Slider(

                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              },
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
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
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: InactiveCardColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyleHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Color(0x9040DDCB),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Color(0x9040DDCB),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour:InactiveCardColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyleHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Color(0x9040DDCB),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor:Color(0x9040DDCB),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                int val = selectedCard == Gender.Male ? 1 : 2;
                CalculatorBrain brain = CalculatorBrain(
                    height: height, weight: weight, age: age, gender: val);
                if(selectedCard != Gender.Non){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChoicePage(
                        BmiResult: brain.Calculate(),
                        BMI: brain.Result(),
                        bmiadvice: brain.Advice(),
                        calories: brain.Calories(),
                        weight:weight,
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
                  color: Color(0xFF40DDCB),
                  child: Center(
                    child: Icon(
                      Icons.double_arrow_outlined,
                      size: 50,
                    ),
                  ),
            )
            )
          ],

        ),
      ),
    );
  }
}
