import 'package:bmi_calculator/classes/personal_info.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/gender_selector.dart';
import 'package:bmi_calculator/components/value_card.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  PersonalInfo info = PersonalInfo();
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
              selectedGender: info.gender,
              onSelect: (gender) => setState(() => info.gender = gender),
            ),
          ),
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
                        info.height.toString(),
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
                    value: info.height.toDouble(),
                    onChanged: (value) =>
                        setState(() => info.height = value.round()),
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
                    value: info.weight,
                    title: 'WEIGHT',
                    unit: 'kg',
                    onChanged: (value) => setState(
                      () => info.weight = value,
                    ),
                  ),
                ),
                Expanded(
                  child: ValueCard(
                    value: info.age,
                    title: 'AGE',
                    onChanged: (value) => setState(
                      () => info.age = value,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsPage(
                  info: info,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
