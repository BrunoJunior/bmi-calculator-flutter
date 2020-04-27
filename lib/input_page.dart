import 'package:bmi_calculator/gender_selector.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

const Color inactiveCardColor = Color(0xFF24263B);
const Color activeCardColor = Color(0xFF323244);
const Color bottomColor = Color(0xFFEB1555);
const double bottomHeight = 70;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: GenderSelector(
            activeColour: activeCardColor,
            inactiveColour: inactiveCardColor,
            onSelect: (gender) => print(gender),
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: bottomHeight,
            color: bottomColor,
          )
        ],
      ),
    );
  }
}
