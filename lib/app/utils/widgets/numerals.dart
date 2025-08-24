import 'package:flutter/material.dart';

class NumeralWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback? onTap;

  const NumeralWidget({
    super.key,
    required this.text,
    this.color = const Color(0xFFF5F5F5),
    this.textColor = Colors.black,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: textColor),
          ),
        ),
      ),
    );
  }
}
