import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

class ValueCard<T extends num> extends StatelessWidget {
  final T value;
  final String title;
  final Function(T) onChanged;
  final String unit;

  ValueCard(
      {@required this.value,
      @required this.title,
      @required this.onChanged,
      this.unit = ''});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: kLabelStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                value.toString(),
                style: kHeightStyle,
              ),
              Visibility(
                visible: unit.isNotEmpty,
                child: Text(
                  unit,
                  style: kLabelStyle,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onTap: () => onChanged(value - 1),
              ),
              SizedBox(
                width: 10,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onTap: () => onChanged(value + 1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
