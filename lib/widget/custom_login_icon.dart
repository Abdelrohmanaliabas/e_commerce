import 'package:e_commerce/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomLogInIcon extends StatelessWidget {
  final Icon icon;
  const CustomLogInIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55),
        color: kLogoColor,
      ),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55),
          color: const Color(0xffFCF3F6),
        ),
        child: icon,
      ),
    );
  }
}
