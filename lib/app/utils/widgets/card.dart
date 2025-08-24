import 'package:flutter/material.dart';
import 'package:my_getx_app/app/utils/constants/colors.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final String image;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final double? width;
  final double height;
  final VoidCallback? onTap;

  final String? buttonText;
  final VoidCallback? onButtonPressed;

  const CardWidget({
    super.key,
    required this.text,
    required this.image,
    this.bgColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.black,
    this.onTap,
    this.height = 160,
    this.width,
    this.buttonText, 
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final w = width ?? (MediaQuery.of(context).size.width - 36) / 2;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: w,
        height: height,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 1,
              left: 1,
              child: Image.asset(image, width: 70, height: 70),
            ),

            Positioned(
              top: 8,
              right: 0,
              child: SizedBox(
                width: w * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      text,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    if (buttonText != null) ...[
                      const SizedBox(height: 6),
                      ElevatedButton(
                        onPressed: onButtonPressed,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                          textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                              backgroundColor: AppColors.buttonOrange,
                              foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)), 
                          ),
                        ),
                        child: Text(buttonText!),
                      )
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
