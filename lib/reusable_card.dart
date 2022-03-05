import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardchild, this.functionality});
  final Color colour;
  final Widget cardchild;
  final Function functionality;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      highlightColor:Color(0xFF40DDCB).withOpacity(0.5),
      splashColor:Color(0x9040DDCB).withOpacity(1) ,
      radius: 500,
      onTap: functionality,
      child: Container(
        child: cardchild,
        height: 180,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          border: Border.all(color: Color(0xFF40DDCB),width: 5),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}