import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/widget/over_card.dart';
import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset(
              'assets/images/api/sale.png',
              fit: BoxFit.fill,
            ),
          ),
          const OfferCard(
            text1: 'New Arrivals ',
            text2: 'Summer’ 25 Collections',
            color: Colors.white,
            customRightAltText: 'view All',
            textColor: Colors.black,
            icon: null,
            bgColor: kLogoColor,
          )
        ],
      ),
    );
  }
}
