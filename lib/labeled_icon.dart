import 'package:flutter/material.dart';

import 'constants.dart';

class LabeledIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  LabeledIcon({@required this.label, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: kLabelStyle,
          ),
        ),
      ],
    );
  }
}
