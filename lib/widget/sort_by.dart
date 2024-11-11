import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/models/sort_type_model.dart';
import 'package:flutter/material.dart';

class SortType extends StatelessWidget {
  // Define 'type' as a static list so it can be accessed without repeating
  static final List<SortTypeModel> type = [
    SortTypeModel(image: 'assets/images/api/1.png', text: 'Beauty'),
    SortTypeModel(image: 'assets/images/api/2.png', text: 'Fashion'),
    SortTypeModel(image: 'assets/images/api/3.png', text: 'Kids'),
    SortTypeModel(image: 'assets/images/api/4.png', text: 'Men'),
    SortTypeModel(image: 'assets/images/api/5.png', text: 'Women'),
  ];

  final SortTypeModel sortType;

  const SortType({
    super.key,
    required this.sortType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(56),
          ),
          child: Image.asset(sortType.image),
        ),
        const SizedBox(height: 6),
        Text(
          sortType.text,
          textAlign: TextAlign.center,
          style: Fontstyle.t10w400mon,
        ),
      ],
    );
  }
}
