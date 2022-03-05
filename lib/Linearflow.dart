import "package:flutter/material.dart";

class LinearFlowWidget extends StatefulWidget {
  @override
  _LinearFlowWidgetState createState() => _LinearFlowWidgetState();
}

class _LinearFlowWidgetState extends State<LinearFlowWidget> {
  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(),
      children: [
        Icons.mail,
        Icons.notifications_active_outlined,
        Icons.person_rounded,
      ].map<Widget>(buildItem).toList(),
    );
  }

  Widget buildItem(IconData icon) => SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          elevation: 0,
          splashColor: Colors.black,
          child: Icon(
            icon,
            color: Colors.white,
            size: 45,
          ),
          onPressed: () {},
        ),
      );
}

class FlowMenuDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    context.paintChild(
      0,
    );
    context.paintChild(
      1,
    );
    context.paintChild(
      2,
    );
  }

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) => false;
}
