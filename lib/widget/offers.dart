import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/images/api/offers.png',
              width: 75,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Special Offers',
                      style: Fontstyle.t16w500mon,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/api/icon.png',
                      width: 16,
                    ),
                  ],
                ),
                Text(
                  'We make sure you get the ',
                  style: Fontstyle.t12w300mon,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
                Text(
                  'offer you need at best prices',
                  style: Fontstyle.t12w300mon,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
