import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uiitask/screens/components/Drawer/drawer_items.dart';
import 'package:uiitask/screens/components/circle_avatar.dart';
import 'package:uiitask/screens/controller/home_page_controller.dart';
import 'package:uiitask/utlis/style/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 1, bottom: 90, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatarWidget(),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Emily Cyrus",
                  style: TextStyle(
                      color: kColorDarkPink, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: DrawItems.all
                .map((element) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(element.title,
                                style: TextStyle(
                                    color: kColorDarkBlue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))
                          ],
                        ),
                        Divider(
                          color: kColorLightPink,
                        )
                      ],
                    )))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    return Column(
      children: DrawItems.all.map((e) {
        return ListTile(title: Text(e.title));
      }).toList(),
    );
  }
}
