import 'package:e_commerce/constant/fontStyle.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xfff9f9f9).withOpacity(0.5),
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/splash.png',
            width: 38,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Stylish',
            style: Fontstyle.t20w600mon.copyWith(color: Colors.blue),
          )
        ],
      ),
      centerTitle: true,
      actions: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          child: Image.asset('assets/images/api/logo.png'),
        )
      ],
    );
  }
}
