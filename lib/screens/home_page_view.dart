import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:uiitask/screens/components/app_button.dart';
import 'package:uiitask/screens/components/app_constant_text.dart';
import 'package:uiitask/screens/components/circle_avatar.dart';
import 'package:uiitask/screens/components/current_booking_card_widget.dart';
import 'package:uiitask/screens/components/home_banner.dart';
import 'package:uiitask/screens/controller/home_page_controller.dart';
import 'package:uiitask/utlis/constants/app_constants.dart';
import 'package:uiitask/utlis/style/app_colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return GestureDetector(
      onTap: () {
        setState(() {
          xOffset = 0;
          yOffset = 0;
          scaleFactor = 1;
          isDrawerOpen = false;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isDrawerOpen ? -0.5 : 0),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: kPadding * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(kPadding * 2),
                    child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: kColorDarkPink,
                          size: 40,
                        ),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 100;
                            scaleFactor = 0.8;
                            isDrawerOpen = true;
                          });
                        }),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding * 6),
                  child: Row(
                    children: [
                      CircleAvatarWidget(),
                      SizedBox(
                        width: kPadding,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome \n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Emily Cyrus',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: kColorDarkPink,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  )),
              SizedBox(
                height: kPadding * 3,
              ),
              HomePageBanner(),
              AppText(
                text: "Your current booking",
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() {
                return controller.isLoading.value
                    ? CircularProgressIndicator()
                    : CurrentBookingCard(
                        currentBookingName: controller
                            .packageList[0].currentBookings.packageLabel,
                        fromDate:
                            controller.packageList[0].currentBookings.fromDate,
                        toDate:
                            controller.packageList[0].currentBookings.toDate,
                        fromTime:
                            controller.packageList[0].currentBookings.fromTime,
                        toTime:
                            controller.packageList[0].currentBookings.toTime,
                      );
              }),
              SizedBox(
                height: kPadding * 3,
              ),
              AppText(
                text: "Packages",
              ),
              SizedBox(
                height: kPadding * 3,
              ),
              Obx(() {
                var packageListData;
                packageListData = controller.isLoading.value
                    ? null
                    : controller.packageList[0].packages;
                return controller.isLoading.value
                    ? SizedBox()
                    : Column(
                        children: [
                          for (var i = 0; i < packageListData.length; i++)
                            Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(kPadding * 2),
                                    child: Container(
                                        height: 170,
                                        width: 303,
                                        color: i % 2 == 0
                                            ? kColorLightPink
                                            : kColorLightBlue,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(18.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  i % 2 == 0
                                                      ? SvgPicture.asset(
                                                          'assets/XMLID_691_.svg',
                                                          width: 30,
                                                          height: 30,
                                                        )
                                                      : SvgPicture.asset(
                                                          'assets/XMLID_691_(1).svg',
                                                          width: 30,
                                                          height: 30,
                                                        ),
                                                  i % 2 == 0
                                                      ? AppButton(
                                                          height: 20,
                                                          width: 80,
                                                          text: "Book Now",
                                                          color: kColorDarkPink,
                                                        )
                                                      : AppButton(
                                                          height: 20,
                                                          width: 80,
                                                          text: "Book Now",
                                                          color: kColorDarkBlue,
                                                        )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 18.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    packageListData[i]
                                                        .packageName,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: kColorDarkBlue,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    "\u{20B9} ${packageListData[i].price}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: kColorDarkBlue,
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(18.0),
                                              child: Text(
                                                packageListData[i].description,
                                                maxLines: 3,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: kColorGrey),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.justify,
                                              ),
                                            )
                                          ],
                                        ))),
                                SizedBox(
                                  height: kPadding * 2,
                                )
                              ],
                            )
                        ],
                      );
              })
            ],
          ),
        ),
      ),
    );
  }
}
