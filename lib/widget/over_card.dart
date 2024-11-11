// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/widget/custom_right_alt.dart';

class OfferCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String customRightAltText;
  final Color color;
  final IconData? icon;
  final Color? textColor;
  final Color? bgColor;

  const OfferCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.customRightAltText,
    required this.color,
    required this.icon,
    this.textColor,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  textAlign: TextAlign.start,
                  style: Fontstyle.t16w500mon.copyWith(
                    color: textColor ?? Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    Text(
                      text2,
                      style: Fontstyle.t12w400mon.copyWith(
                        color: textColor ?? Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            CustomRightAlt(
              text: customRightAltText,
              width: 100,
              bgcolor: bgColor,
            ),
          ],
        ),
      ),
    );
  }
}
