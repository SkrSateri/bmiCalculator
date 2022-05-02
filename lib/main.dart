import 'package:flutter/material.dart';
import 'card_container.dart';
import 'constants.dart';
import 'round_button.dart';
import 'bottom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color maleCardColor = kCardColor, femaleCardColor = kCardColor;
  double height = 150;
  int weight = 60, age = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("BMI Calculator", textAlign: TextAlign.center),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                CardContainer(
                  onPressed: () {
                    setState(() {
                      maleCardColor = Colors.deepPurple.shade500;
                      femaleCardColor = kCardColor;
                    });
                  },
                  color: maleCardColor,
                  child: Column(
                    children: [
                      Icon(
                        Icons.male,
                        size: kIconSize,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                CardContainer(
                  onPressed: () {
                    setState(() {
                      femaleCardColor = Colors.deepPurple.shade500;
                      maleCardColor = kCardColor;
                    });
                  },
                  color: femaleCardColor,
                  child: Column(
                    children: [
                      Icon(
                        Icons.female,
                        size: kIconSize,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CardContainer(
              color: kCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Height",style: kcardContainerTitleTextStyle,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 120,
                    max: 250,
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                      });
                    },
                    activeColor: Colors.red,
                    thumbColor: Colors.red,
                    inactiveColor: Colors.grey,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CardContainer(
                  color: kCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Weight",
                        style: kcardContainerTitleTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButton(
                            child: Icon(Icons.add,size: 35,),
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(width: 8,),
                          RoundButton(
                            child: Icon(Icons.remove, size: 35,),
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
                CardContainer(
                  color: kCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Age",
                        style: kcardContainerTitleTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButton(
                            child: Icon(Icons.add,size: 35,),
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(width: 8,),
                          RoundButton(
                            child: Icon(Icons.remove, size: 35,),
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            BottomButton(
              buttonText: "CALCULATE",
              onPressed: (){
                setState(() {

                });
              },
            ),
          ],
        ),
      ),
    );
  }
}



