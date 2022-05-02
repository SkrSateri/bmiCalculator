import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.child, this.onPressed});

  Widget? child;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      fillColor: Colors.red,
      child: child,
    );
  }
}