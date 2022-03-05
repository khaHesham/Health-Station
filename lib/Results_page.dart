import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Resultspage extends StatelessWidget {

  Resultspage({@required this.BMI,@required this.BmiResult,@required this.bmiadvice,@required this.calories});
 final String BmiResult;
 final String BMI ;
 final String bmiadvice ;
 final String calories;

 Color state(String bmi)
 {
   if(bmi=='Obesity')
     {
       return Colors.red;
     }
   else if(bmi=='Overweight')
     {
       return Colors.deepOrange;
     }
   else if(bmi=='Normal')
     {
       return Color(0xFF24D876);
     }
   else if(bmi=='Underweight')
     {
       return Colors.red;
     }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bmi',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginhomeimage.png'),//AssetImage('images/BACKGROUND.png'),
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
                  'Your Result',
                  style: TextStyle(
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
                      color: Color(0x70323244),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            BMI.toUpperCase(),
                            style: TextStyle(
                              fontSize: 22.0,
                              color:state(BMI),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(BmiResult,
                            style: TextStyle(
                              fontSize: 90.0,
                              fontWeight: FontWeight.bold,
                            ),
                        ),


                        Text(
                          bmiadvice,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
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
              },
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                ),
                height: 60.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0x9040DDCB),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 50,
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
