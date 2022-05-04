import 'package:bmi_calculator/card_container.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'calculation_brain.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.weight,required this.height});

  double weight, height;
  double bmi = 0;
  CalculationBrain calculationBrain = new CalculationBrain();

  @override
  Widget build(BuildContext context) {

    calculationBrain.calculateBMI(this.height, this.weight);
    calculationBrain.calculateColor();
    this.bmi = calculationBrain.getBMI();
    int messageColorString = calculationBrain.getColor();
    Color messageColor = Colors.yellow;

    if(messageColorString == 1){
      messageColor = Colors.red;
    }
    else if(messageColorString == 2){
      messageColor = Colors.green;
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CardContainer(
              color: Colors.grey.shade900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "Your BMI",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Center(
                    child: Text(
                      this.bmi.toStringAsFixed(2),
                      style: kNumberTextStyle.copyWith(color: messageColor),
                    ),
                  ),
                  Center(
                    child: Text(
                      calculationBrain.resultMessage(),
                      style: TextStyle(
                        fontSize: 15,
                        color: messageColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonText: "RECALCULATE",
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}