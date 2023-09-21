import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;
  final Color color;
  final double titleSize;

  const TitleWidget({Key? key, required this.titleText, required this.color, required this.titleSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        fontSize: titleSize, // Adjust the font size as needed
        fontWeight: FontWeight.bold, // Add bold styling if desired
        color: color, // Customize the text color
      ),
    );
  }
}
