import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final double fontSize;
  final bool isBold;
  final Color color;

  const Heading({
    super.key,
    required this.title,
    this.fontSize = 20,
    this.isBold = true,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
