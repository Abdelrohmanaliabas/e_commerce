import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/login/log_in_screen.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/custom_text_filed.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Forgot                 password?',
              style: Fontstyle.t38w800lib.copyWith(
                overflow: TextOverflow.clip,
              ),
              maxLines: 2,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hintText: 'Enter your email address',
              textInputType: TextInputType.emailAddress,
              obscureText: false,
              icon: const Icon(Icons.mail),
              suffixIcon: IconButton(onPressed: () {}, icon: const Icon(null)),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              '* We will send you a message to set or reset                             your new password ',
              style: Fontstyle.t12w400mon.copyWith(
                overflow: TextOverflow.clip,
              ),
              maxLines: 2,
            ),
            const SizedBox(
              height: 52,
            ),
            CustomElevatedButton(
              buttonName: 'Submit',
              buttonColor: kLogoColor,
              textStyle: Fontstyle.t20w600mon.copyWith(color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const LogInScreen();
                }));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
