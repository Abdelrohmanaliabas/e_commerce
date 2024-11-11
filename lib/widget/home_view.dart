import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/widget/all_feature.dart';
import 'package:e_commerce/widget/card_off.dart';
import 'package:e_commerce/widget/custom_app_bar.dart';
import 'package:e_commerce/widget/custom_text_filed.dart';
import 'package:e_commerce/widget/mac.dart';
import 'package:e_commerce/widget/offers.dart';
import 'package:e_commerce/widget/over_card.dart';
import 'package:e_commerce/widget/prodact_card.dart';
import 'package:e_commerce/widget/sale.dart';
import 'package:e_commerce/widget/sort_by.dart';
import 'package:e_commerce/widget/sponserd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 12),
            CustomTextFiled(
              color: Colors.white,
              hintText: 'Search any Product..',
              textInputType: TextInputType.text,
              obscureText: false,
              icon: const Icon(Icons.search),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.microphone),
              ),
            ),
            const SizedBox(height: 12),
            const AllFeatured(),
            const SizedBox(height: 12),
            Container(
              height: 100,
              color: Colors.white,
              child: ListView.builder(
                itemCount: SortType.type.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SortType(sortType: SortType.type[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const CardOff(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                3,
                (index) => Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: index == 1 ? kLogoColor : Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            const OfferCard(
              text1: 'Deal of the Day',
              text2: '22h 55m 20s remaining ',
              color: Colors.blue,
              customRightAltText: 'View All',
              icon: Icons.timelapse,
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 320,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 18.0, top: 18),
                      child: ProdactCard(),
                    );
                  }),
            ),
            const SizedBox(height: 18),
            const Offers(),
            const SizedBox(height: 16),
            const Mac(),
            const SizedBox(height: 16),
            const OfferCard(
              text1: 'Trending Products ',
              text2: 'Last Date 29/02/22',
              color: kLogoColor,
              customRightAltText: 'View all',
              icon: Icons.calendar_month,
            ),
            SizedBox(
              height: 320,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 18.0, top: 18),
                      child: ProdactCard(),
                    );
                  }),
            ),
            const SizedBox(height: 12),
            const SaleCard(),
            const SizedBox(height: 24),
            const Sponserd(),
          ],
        ),
      ),
    );
  }
}
