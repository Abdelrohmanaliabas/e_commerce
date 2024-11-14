import 'package:e_commerce/widget/all_feature.dart';
import 'package:e_commerce/widget/custom_app_bar.dart';
import 'package:e_commerce/widget/custom_text_filed.dart';
import 'package:e_commerce/widget/prodact_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  _WishListViewState createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  // ScrollControllers لكل قائمة
  final ScrollController scrollController1 = ScrollController();
  final ScrollController scrollController2 = ScrollController();

  @override
  void initState() {
    super.initState();
    // ربط التمرير بين القائمتين
    scrollController1.addListener(() {
      if (scrollController1.position.atEdge) return;
      if (!scrollController2.hasClients) return;
      scrollController2.jumpTo(scrollController1.offset);
    });
    scrollController2.addListener(() {
      if (scrollController2.position.atEdge) return;
      if (!scrollController1.hasClients) return;
      scrollController1.jumpTo(scrollController2.offset);
    });
  }

  @override
  void dispose() {
    scrollController1.dispose();
    scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
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
          const AllFeatured(
            text: '52,082+ Items',
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: scrollController1, // ربط ScrollController الأول
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 18.0, top: 18),
                        child: ProdactCard(),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller:
                        scrollController2, // ربط ScrollController الثاني
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 18.0, top: 18),
                        child: ProdactCard(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
