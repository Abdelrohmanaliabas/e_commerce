// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/custom_pay_card.dart';
import 'package:e_commerce/widget/custom_row.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/constant/fontStyle.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
                const Spacer(),
                Text(
                  'Payment',
                  style: Fontstyle.t14w600mon,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
              width: double.infinity,
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomOrderRow(text1: 'Order', price: '7,000'),
            const SizedBox(
              height: 10,
            ),
            const CustomOrderRow(text1: 'Shipping', price: '30'),
            const SizedBox(
              height: 10,
            ),
            const CustomOrderRow(text1: 'Total', price: '7,030'),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
              width: double.infinity,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  'Payment',
                  style: Fontstyle.t14w600mon,
                ),
              ],
            ),
            const CustomPayCard(
              imagePay: 'assets/images/api/visa.png',
              numCard: '*********2109',
            ),
            const CustomPayCard(
                imagePay: 'assets/images/api/paypal.png',
                numCard: '*********2109'),
            const CustomPayCard(
                imagePay: 'assets/images/api/maestro.png',
                numCard: '*********2109'),
            const CustomPayCard(
                imagePay: 'assets/images/api/apple.png',
                numCard: '*********2109'),
            const SizedBox(
              height: 24,
            ),
            CustomElevatedButton(
              buttonName: 'Continue',
              buttonColor: kLogoColor,
              textStyle: Fontstyle.t20w600mon.copyWith(color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
