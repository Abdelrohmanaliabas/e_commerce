import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';

class CustomRightAlt extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? bgcolor;
  final double? width;
  final double? padding;
  const CustomRightAlt({
    super.key,
    required this.text,
    this.color,
    this.width,
    this.padding,
    this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 2, color: color ?? Colors.white),
          color: bgcolor),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 8),
        child: Row(
          children: [
            Text(
              text,
              style: Fontstyle.t12w600mon.copyWith(color: Colors.white),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
