import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/constant/fontStyle.dart';
import 'package:e_commerce/login/forget_pass.dart';
import 'package:e_commerce/login/sign_up_screen.dart';
import 'package:e_commerce/screens/get_start.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/custom_login_icon.dart';
import 'package:e_commerce/widget/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Welcome                Back!',
                style: Fontstyle.t38w800lib.copyWith(
                  overflow: TextOverflow.clip,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFiled(
                hintText: 'Username or Email',
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                icon: const Icon(Icons.man_2_rounded),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(null)),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFiled(
                hintText: 'Password',
                textInputType: TextInputType.text,
                obscureText: true,
                icon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const ForgetPass();
                      }));
                    },
                    child: Text(
                      'Forget Password!',
                      style: Fontstyle.t12w400mon.copyWith(color: kLogoColor),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 52,
              ),
              CustomElevatedButton(
                buttonName: 'Log in',
                buttonColor: kLogoColor,
                textStyle: Fontstyle.t20w600mon.copyWith(color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const GetStart();
                  }));
                },
              ),
              const SizedBox(
                height: 44,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '- OR Continue with -',
                    style: Fontstyle.t12w500mon,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLogInIcon(
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CustomLogInIcon(
                        icon: Icon(
                          FontAwesomeIcons.apple,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CustomLogInIcon(
                        icon: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create An Account',
                        style: Fontstyle.t12w400mon,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const SignUpScreen();
                          }));
                        },
                        child: Text(
                          'Sign Up',
                          style:
                              Fontstyle.t12w400mon.copyWith(color: kLogoColor),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
