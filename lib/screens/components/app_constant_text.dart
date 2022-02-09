import 'package:flutter/material.dart';
import 'package:uiitask/utlis/style/app_colors.dart';

class AppText extends StatelessWidget {
  final String? text;
  const AppText({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Text(
            text!,
            style: TextStyle(
                color: kColorDarkBlue,
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
      ],
    );
  }
}
