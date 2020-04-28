import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'labeled_icon.dart';
import 'reusable_card.dart';

class GenderSelector extends StatelessWidget {
  final Function(Gender) onSelect;
  final Gender selectedGender;
  GenderSelector({@required this.selectedGender, this.onSelect});

  getColour(Gender gender) =>
      gender == selectedGender ? kActiveCardColor : kInactiveCardColor;

  select(Gender gender) {
    if (selectedGender == gender) {
      return;
    }
    if (onSelect != null) {
      onSelect(gender);
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
