import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/login/log_in_screen.dart';
import 'package:e_commerce/models/splash_view_model.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<ScreenModel> splashScreens = [
    ScreenModel(
      title: 'Choose Products',
      text:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: 'assets/images/splash1.png',
    ),
    ScreenModel(
      title: 'Make Payment',
      text:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: 'assets/images/splash2.png',
    ),
    ScreenModel(
      title: 'Get Your Order',
      text:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: 'assets/images/splash3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${_currentIndex + 1}',
                  style: Fontstyle.t18w600mon.copyWith(color: Colors.grey),
                ),
                Text(
                  '/3',
                  style: Fontstyle.t18w600mon.copyWith(color: Colors.black),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    // Go to the last page directly on "Skip"
                    _pageController.jumpToPage(splashScreens.length - 1);
                  },
                  child: GestureDetector(
                    onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInScreen()),
                      (route) => false,
                    ),
                    child: Text(
                      'Skip',
                      style: Fontstyle.t18w600mon.copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: splashScreens.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final screen = splashScreens[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        screen.image,
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        screen.title,
                        style: Fontstyle.t24w800mon,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          screen.text,
                          style: Fontstyle.t14w600mon,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                const Text(''),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(
                    splashScreens.length,
                    (index) => Container(
                      width: _currentIndex == index ? 25 : 5,
                      height: 5,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color:
                            _currentIndex == index ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    if (_currentIndex < splashScreens.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // Navigate to the main screen or another page after onboarding
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogInScreen()),
                        (route) => false,
                      );
                    }
                  },
                  child: Text(
                    _currentIndex == splashScreens.length - 1
                        ? 'Get Started'
                        : 'Next',
                    style: Fontstyle.t18w600mon.copyWith(color: kLogoColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
