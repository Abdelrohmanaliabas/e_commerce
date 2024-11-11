import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';

class Sponserd extends StatelessWidget {
  const Sponserd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sponserd',
              style: Fontstyle.t20w600mon,
              textAlign: TextAlign.left,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/api/50.png',
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'up to 50% Off',
                    style: Fontstyle.t16w500mon,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_right,
                    weight: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
