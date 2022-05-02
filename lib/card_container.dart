import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({this.child, this.onPressed, this.color});

  Widget? child;
  Function()? onPressed;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.color,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(25),
          onPressed: this.onPressed,
          child: this.child,
        ),
      ),
    );
  }
}
