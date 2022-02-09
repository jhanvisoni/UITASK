import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uiitask/screens/components/app_button.dart';
import 'package:uiitask/utlis/style/app_colors.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
                height: 170,
                width: 303,
                color: kColorLightPink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Nanny And \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: kColorDarkBlue,
                                      fontSize: 16),
                                ),
                                TextSpan(
                                  text: 'Babysitting Services',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: kColorDarkBlue,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: AppButton(
                            height: 30,
                            width: 90,
                            text: "Book Now",
                            color: kColorDarkBlue,
                          ),
                        ),
                      ],
                    )
                  ],
                ))),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            'assets/Group 3749.svg',
            width: 180,
            height: 200,
          ),
        ),
      ],
    );
  }
}
