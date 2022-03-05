import 'package:flutter/material.dart';

class WaterPage extends StatelessWidget {
  WaterPage({@required this.weight});
  final int weight;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Water',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/water.png'),
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
                      color: Color(0x80323244),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),
                        Text(
                          (((weight * (2 / 3)*2.205))/ 35.274).toStringAsFixed(1) + ' L',
                          style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text('This is the least amount of water your body needs without training drink at least from 1L to 1.5L of water during training session ',
                          textAlign:TextAlign.center ,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        )
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
                color: Color(0xFFEB1555),
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
