// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce/constant/fontStyle.dart';

class SettingView extends StatefulWidget {
  const SettingView({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool switchVale = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Dark Mode',
                style: Fontstyle.t24w800mon,
              ),
              const Spacer(),
              Switch(
                value: switchVale,
                onChanged: (newValue) {
                  setState(() {
                    switchVale = newValue;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
