import 'package:flutter/material.dart';

const SizeIcon=80.0;

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;

  IconContent({@required this.text,this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Icon(
        icon,
        size: SizeIcon,
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ]);
  }
}