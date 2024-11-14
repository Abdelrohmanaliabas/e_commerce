import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/widget/all_feature.dart';
import 'package:e_commerce/widget/check_out.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/prodact_card.dart';
import 'package:e_commerce/widget/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<CartView> {
  final PageController _pageController = PageController();
  List<Map<String, dynamic>> cartProducts = [];

  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28, left: 28, right: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 24,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return CheckOut(
                                cartProducts: cartProducts,
                              );
                            }));
                          },
                          icon: const Icon(FontAwesomeIcons.cartShopping),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      children: [
                        SizedBox(
                          height: 240,
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: 12,
                            onPageChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/images/api/shose1.png',
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(12, (index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? kLogoColor.withOpacity(.7)
                                    : Colors.grey[300],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                    Text(
                      'Size: 7UK',
                      style: Fontstyle.t14w600mon,
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: kLogoColor,
                                  width: 3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 12),
                                child: Text(
                                  '6 UK',
                                  style: Fontstyle.t14w600mon
                                      .copyWith(color: kLogoColor),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'NIke Sneakers',
                      style: Fontstyle.t20w600mon,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Vision Alta Men’s Shoes Size (All Colours)',
                      style: Fontstyle.t14w400mon,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const StarRating(rating: 4),
                        const SizedBox(width: 12),
                        Text(
                          '56,890',
                          style: Fontstyle.t14w400mon,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          '₹2,999',
                          style:
                              Fontstyle.t14w400mon.copyWith(color: Colors.grey),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '₹1,500',
                          style: Fontstyle.t14w400mon
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '50% Off',
                          style:
                              Fontstyle.t14w400mon.copyWith(color: kLogoColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Product Details',
                      style: Fontstyle.t14w400mon,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Perhaps the most iconic sneaker of all-time, this original "Chicago" colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                      style: Fontstyle.t12w300mon,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cartProducts.add({
                            'name': 'NIke Sneakers',
                            'price': '₹1,500',
                            'image': 'assets/images/api/shose1.png',
                            'rate': 3.7,
                            'offer': '%50',
                          });
                        });
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 12.0),
                            child: CustomElevatedButton(
                                buttonName: 'Add to Card',
                                buttonColor: kLogoColor,
                                textStyle: Fontstyle.t20w600mon
                                    .copyWith(color: Colors.white),
                                onPressed: () {}),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: kLogoColor,
                            ),
                            child: const Icon(
                              Icons.add_shopping_cart,
                              size: 24,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffffccd5)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery in ',
                              style: Fontstyle.t14w600mon,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '1 within Hour',
                              style: Fontstyle.t20w600mon,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Similar To',
                      style: Fontstyle.t20w600mon,
                    ),
                    const SizedBox(height: 8),
                    const AllFeatured(text: '282+ Iteams '),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 9,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: Row(
                      children: [
                        Spacer(),
                        ProdactCard(),
                        Spacer(),
                        ProdactCard(),
                        Spacer(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
