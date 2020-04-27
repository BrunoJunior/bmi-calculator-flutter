import 'package:bmi_calculator/gender_selector.dart';
import 'package:bmi_calculator/value_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 80;
  int age = 20;
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: GenderSelector(
            onSelect: (gender) => selectedGender = gender,
          )),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kHeightStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    min: 120,
                    max: 240,
                    value: height.toDouble(),
                    onChanged: (value) =>
                        setState(() => height = value.round()),
                    activeColor: kBottomColor,
                    inactiveColor: kInactiveCardColor,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ValueCard(
                    value: weight,
                    title: 'WEIGHT',
                    unit: 'kg',
                    onChanged: (value) => setState(
                      () => weight = value,
                    ),
                  ),
                ),
                Expanded(
                  child: ValueCard(
                    value: age,
                    title: 'AGE',
                    onChanged: (value) => setState(
                      () => age = value,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: kBottomHeight,
            color: kBottomColor,
          )
        ],
      ),
    );
  }
}
