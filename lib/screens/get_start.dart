import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/screens/home.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/GetStarted.png',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(56.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'You want',
                    style: Fontstyle.t34w600mon.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Authentic here',
                    style: Fontstyle.t34w600mon.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' you go!',
                    style: Fontstyle.t34w600mon.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Find it here, buy it now!',
                    style: Fontstyle.t14w400mon.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                      buttonName: 'Get Start',
                      buttonColor: kLogoColor,
                      textStyle:
                          Fontstyle.t24w800mon.copyWith(color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const Home();
                            },
                          ),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
