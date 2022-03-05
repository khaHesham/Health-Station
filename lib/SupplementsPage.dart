import 'package:flutter/material.dart';

import 'package:bmi_calculator/ProteinSupplement.dart';

class Supplementspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tips',
        ),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 40,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Proteinsupplements(
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,

                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "protein",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/protein.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Gainers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/gainers.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Creatine",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/creatine.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "caffeine",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/caffeine.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Omega 3",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/omega3.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Multivitamins",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/multivitamins.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Amino acids",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/aminoacids.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Glutamine",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/glutamine.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Green tea",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/greentea.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "HMP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/hmb.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "CLA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/cla.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Nitric oxide",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/nitricoxide.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Chromium picolinate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/chromiumpicolinate.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "Thermogenic",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/thermogenic.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "L-Carnitine",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/l_carnitine.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x790000FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        "ZMA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('images/zma.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
