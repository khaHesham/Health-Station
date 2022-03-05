import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'NutritionList.dart';

class ResultsSearch extends StatelessWidget {
  ResultsSearch({@required this.index});
  final int index;

  NUTRITION nutriants = NUTRITION();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'per 100 gram',
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
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x50323244),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${nutriants.Nutrition[index].cal.toInt()}',
                                  style: TextStyle(
                                    fontSize: 60.0,
                                    color:Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text(
                                    'Kcal',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Color(0xFF8D8E98),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Protein :${nutriants.Nutrition[index].protein} g',
                                  style: TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Carbs :${nutriants.Nutrition[index].carb} g',
                                  style: TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Fats :${nutriants.Nutrition[index].fat} g',
                                  style: TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                ),
                height: 60.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0x30EB1555),
                child: Center(
                    child: Icon(
                  Icons.arrow_back_outlined,
                  size: 50,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
