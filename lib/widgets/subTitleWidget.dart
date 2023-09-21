// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  final String subTitleText;
  final Color color;
  final double subTitleTextSize;

  const SubTitleWidget({Key? key, required this.subTitleText, required this.color, required this.subTitleTextSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitleText,
      style: TextStyle(
          fontSize: subTitleTextSize, // Adjust the font size as needed
          color: color, // Customize the text color
          height: 2),
    );
  }
}
