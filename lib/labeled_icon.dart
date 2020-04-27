import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

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
            style: labelStyle,
          ),
        ),
      ],
    );
  }
}
