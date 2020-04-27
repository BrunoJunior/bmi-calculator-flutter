import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'labeled_icon.dart';
import 'reusable_card.dart';

enum Gender {
  male,
  female,
}

class GenderSelector extends StatefulWidget {
  final Function(Gender) onSelect;

  GenderSelector({this.onSelect});

  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  Gender activeGender;

  getColour(Gender gender) =>
      gender == activeGender ? kActiveCardColor : kInactiveCardColor;

  select(Gender gender) {
    if (activeGender == gender) {
      return;
    }
    setState(() => activeGender = gender);
    if (widget.onSelect != null) {
      widget.onSelect(activeGender);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ReusableCard(
            child: LabeledIcon(
              label: 'MALE',
              icon: FontAwesomeIcons.mars,
            ),
            onTap: () => select(Gender.male),
            colour: getColour(Gender.male),
          ),
        ),
        Expanded(
          child: ReusableCard(
            child: LabeledIcon(
              label: 'FEMALE',
              icon: FontAwesomeIcons.venus,
            ),
            onTap: () => select(Gender.female),
            colour: getColour(Gender.female),
          ),
        ),
      ],
    );
  }
}
