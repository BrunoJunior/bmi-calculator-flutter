import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomButton({@required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: kBottomHeight,
        color: kBottomColor,
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
