import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';

class CustomOrderRow extends StatelessWidget {
  final String text1;
  final String price;

  const CustomOrderRow({
    super.key,
    required this.text1,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: Fontstyle.t14w400mon.copyWith(color: Colors.grey),
        ),
        const Spacer(),
        Text(
          price,
          style: Fontstyle.t14w400mon.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
