import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/widget/custom_right_alt.dart';
import 'package:flutter/material.dart';

class CardOff extends StatelessWidget {
  const CardOff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/api/card.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '50-40% OFF',
                  style: Fontstyle.t20w600mon.copyWith(color: Colors.white),
                ),
                Text(
                  'Now in (product)',
                  style: Fontstyle.t12w400mon.copyWith(color: Colors.white),
                ),
                Text(
                  'All colours',
                  style: Fontstyle.t12w400mon.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomRightAlt(
                  text: 'Shop Now',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
