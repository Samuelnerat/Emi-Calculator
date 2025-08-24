import 'package:flutter/material.dart';

class LoanCardWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String image;
  final String text;
  final Color textColor;

  const LoanCardWidget({
    super.key, 
    required this.width, 
    required this.height,
    required this.text,
    this.color = Colors.white,
   required this.image,
   this.textColor = Colors.black });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, width: 40, height: 40),
          SizedBox(width: 10),
          Text(
  text,
  style: TextStyle(fontSize: 12, color: textColor),
  textAlign: TextAlign.center,
),
        ],
      ),
    );
  }
}
