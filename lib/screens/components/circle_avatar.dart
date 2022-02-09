import 'package:flutter/material.dart';
import 'package:uiitask/utlis/style/app_colors.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33.0,
      backgroundColor: kColorDarkPink,
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(
            "https://i.pinimg.com/236x/d9/e7/a1/d9e7a1ae16ed4b9006ad9ba68874240f.jpg"),
        backgroundColor: kColorLightPink,
      ),
    );
  }
}
