import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({this.child = null});

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple.shade900,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: this.child,
      ),
    );
  }
}
