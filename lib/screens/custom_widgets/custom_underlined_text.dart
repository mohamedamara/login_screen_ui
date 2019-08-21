import 'package:flutter/material.dart';

class CustomUnderlinedText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color underlineColor;

  CustomUnderlinedText({
    Key key,
    this.text,
    this.textColor,
    this.underlineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          Divider(
            height: 1,
            color: underlineColor,
          ),
        ],
      ),
    );
  }
}
