import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllFeatured extends StatelessWidget {
  const AllFeatured({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Featured',
          style: Fontstyle.t18w600mon,
        ),
        const Spacer(),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
            child: Row(
              children: [
                Text(
                  'Sort',
                  style: Fontstyle.t12w400mon,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  FontAwesomeIcons.sort,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Filter',
                  style: Fontstyle.t12w400mon,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  FontAwesomeIcons.filterCircleXmark,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
