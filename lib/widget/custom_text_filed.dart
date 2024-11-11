// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce/constant/fontStyle.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final Icon icon;
  final IconButton suffixIcon;
  final Color? color;

  const CustomTextFiled({
    super.key,
    required this.hintText,
    required this.textInputType,
    required this.obscureText,
    required this.icon,
    required this.suffixIcon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        fillColor: color,
        prefixIcon: icon,
        border: null,
        prefixIconColor: const Color(0xffA8A8A9),
        hintText: hintText,
        hintStyle: Fontstyle.t12w300mon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: const EdgeInsets.all(14),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
