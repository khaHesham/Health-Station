import 'package:flutter/material.dart';

class CaloriesResult extends StatelessWidget {
  CaloriesResult(
      {@required this.cal,
      @required this.protein,
      @required this.carbs,
      @required this.fats});

  final double cal;
  final double protein;
  final double carbs;
  final double fats;

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
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Recommended Calories :',
                  style: TextStyle(
                    color: Color(0xFF40DDCB),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      border: Border.all(color: Color(0xFF40DDCB),width: 5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              cal.toStringAsFixed(0),
                              style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 43),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Protein :',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              protein.toStringAsFixed(0)+' g',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              (((protein*4)/cal)*100).toStringAsFixed(0)+' %',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Carbs :',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              carbs.toStringAsFixed(0)+' g',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              (((carbs*4)/cal)*100).toStringAsFixed(0)+' %',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Fats :',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              fats.toStringAsFixed(0)+' g',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              (((fats*9)/cal)*100).toStringAsFixed(0)+' %',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                ),
                height: 60.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xFF40DDCB),
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
