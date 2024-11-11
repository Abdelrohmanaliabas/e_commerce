import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating; // rating value from 0.0 to 5.0
  final double starSize;

  const StarRating({
    super.key,
    required this.rating,
    this.starSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star, color: Colors.amber, size: starSize);
        } else if (index < rating && rating % 1 != 0) {
          return Icon(Icons.star_half, color: Colors.amber, size: starSize);
        } else {
          return Icon(Icons.star_border, color: Colors.amber, size: starSize);
        }
      }),
    );
  }
}
