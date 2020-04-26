import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'labeled_icon.dart';
import 'reusable_card.dart';

const Color activeCardColor = Color(0xFF24263B);
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
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    child: LabeledIcon(
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: LabeledIcon(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
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
