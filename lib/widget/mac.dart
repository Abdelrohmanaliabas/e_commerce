import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/widget/custom_right_alt.dart';
import 'package:flutter/material.dart';

class Mac extends StatelessWidget {
  const Mac({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/api/mac.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/api/shose.png',
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Text(
                    'Flat and Heels',
                    style: Fontstyle.t16w500mon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stand a chance to get rewarded',
                    style: Fontstyle.t10w400mon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 48.0),
                    child: CustomRightAlt(
                      text: 'Visit now ',
                      bgcolor: kLogoColor,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
