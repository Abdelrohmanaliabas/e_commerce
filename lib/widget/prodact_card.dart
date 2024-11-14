import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/widget/star_rating.dart';
import 'package:flutter/material.dart';

class ProdactCard extends StatelessWidget {
  final String? name;
  final String? price;
  final String? image;
  final String? offer;
  final double? rate;

  const ProdactCard(
      {super.key, this.name, this.price, this.image, this.offer, this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset(
              image ?? 'assets/images/api/list2.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? 'Women Printed Kurta',
                  style: Fontstyle.t12w500mon,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Neque porro quisquam est qui dolorem ipsum quia',
                  style: Fontstyle.t12w400mon,
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  price ?? '₹1500',
                  style: Fontstyle.t12w500mon,
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          '40%Off',
                          style: Fontstyle.t10w400mon
                              .copyWith(color: const Color(0xffFE735C)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '56890',
                          style:
                              Fontstyle.t10w400mon.copyWith(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    StarRating(rating: rate ?? 3.7),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '56890',
                      style: Fontstyle.t10w400mon.copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
