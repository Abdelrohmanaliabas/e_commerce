import 'dart:async';

import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                const SplashScreen()), // Replace MainScreen with your target screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.png',
              width: 100,
              height: 100,
            ),
            Text(
              'Stylish',
              style: Fontstyle.t40w700lib,
            ),
          ],
        ),
      ),
    );
  }
}
