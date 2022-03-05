import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'dart:io';
import 'dart:math';
import "package:bmi_calculator/Linearflow.dart";

class Namecollector extends StatefulWidget {
  @override
  _NamecollectorState createState() => _NamecollectorState();
}

class _NamecollectorState extends State<Namecollector> {
  TextEditingController _textEditingController = TextEditingController();

  String Name;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gym2.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //LinearFlowWidget(),
              Center(
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onChanged: (value){
                    Name=value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  highlightColor: Colors.blue.withOpacity(1),
                  splashColor: Colors.white.withOpacity(1),
                  radius: 500,
                  onTap: () {
                    if(Name.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return InputPage();
                          },
                        ),
                      );
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0x9040DDCB),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




