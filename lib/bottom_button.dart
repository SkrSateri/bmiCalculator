import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonText = "Button", this.onPressed});

  String buttonText;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kCalculationButtonRadius),
          topRight: Radius.circular(kCalculationButtonRadius),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        child: Text(
          buttonText,
          style: kCalculateButtonTextStyle,
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kCalculationButtonRadius),
            topRight: Radius.circular(kCalculationButtonRadius),
          ),
        ),
        alignment: Alignment.center,
        height: 50,
      ),
    );
  }
}
