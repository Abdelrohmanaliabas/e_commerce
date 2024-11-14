import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';

class CustomPayCard extends StatelessWidget {
  final String imagePay;
  final String numCard;
  const CustomPayCard({
    super.key,
    required this.imagePay,
    required this.numCard,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Image.asset(imagePay),
              const Spacer(),
              Text(
                numCard,
                style: Fontstyle.t14w400mon
                    .copyWith(color: const Color(0xff6E7179)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
