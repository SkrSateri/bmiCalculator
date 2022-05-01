import 'package:flutter/material.dart';
import 'card_container.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                  child: Column(
                    children: [
                      Icon(Icons.male,size: kIconSize,),
                      Text("Male",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                ),
                CardContainer(
                  child: Column(
                    children: [
                      Icon(Icons.female,size: kIconSize,),
                      Text("Female",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                ),
              ],
            ),
            CardContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("150",style: TextStyle(fontSize: 50),),
                      Text("cm",style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  Slider(value: 150 ,min: 120, max: 250, onChanged: test()),
                ],
              ),
            ),
            Row(
              children: [
                CardContainer(
                  child: Column(
                    children: [
                      Icon(Icons.male,size: kIconSize,),
                      Text("Male",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                ),
                CardContainer(
                  child: Column(
                    children: [
                      Icon(Icons.female,size: kIconSize,),
                      Text("Female",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

test(){

}
