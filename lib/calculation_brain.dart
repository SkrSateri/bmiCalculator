import 'dart:math';

class CalculationBrain {

  double _bmi = 0;
  int _color = 0;

  calculateBMI(double h, double w) {
    // h for height, w for weight
    //the funchtion is going to get variables from result page, calculate bmi depending
    //on the funchtion bmi = kg/m**2.

    this._bmi = w / pow((h / 100), 2);
  }

  calculateColor(){
    double bmi = getBMI();
    if (bmi >= 25 || bmi <= 18.4) {
      this._color = 1; // red
    }
    else if (bmi >= 18.5 && bmi <= 24.9) {
      this._color = 2; //green
    }
    else {
      this._color = 3; //yellow
    }
  }

  double getBMI(){
    return this._bmi;
  }

  String resultMessage() {
    String message = "";
    double bmi = this._bmi;
    if (bmi >= 25) {
      message =
          "Your BMI result is overweight! You should start dieting and sport. Your health is important!";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      message =
          "Your BMI result is healthy. You doing a great job with your health.";
    } else if (bmi <= 18.4) {
      message =
          "Your BMI result is way too low! See a doctor! It can be a sickness.";
    } else {
      message = "An error occurred! Please recalculate your BMI!.";
    }
    return message;
  }

  int getColor(){
    return this._color;
  }
}
