import 'package:flutter/material.dart';
import 'package:uiitask/screens/components/app_button.dart';
import 'package:uiitask/utlis/constants/app_constants.dart';
import 'package:uiitask/utlis/style/app_colors.dart';

class CurrentBookingCard extends StatelessWidget {
  final String? currentBookingName;
  final String? fromDate;
  final String? toDate;
  final String? fromTime;
  final String? toTime;

  const CurrentBookingCard(
      {Key? key,
      this.currentBookingName,
      this.fromDate,
      this.toDate,
      this.fromTime,
      this.toTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
          height: 170,
          width: 303,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      currentBookingName!,
                      style: TextStyle(
                          color: kColorDarkPink,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    AppButton(
                      height: 20,
                      width: 90,
                      text: "Start",
                      color: kColorDarkPink,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Text(
                        "From",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "To",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.calendar_today_outlined,
                      color: kColorDarkPink,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      fromDate!,
                      style: TextStyle(
                          color: kColorGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: kPadding * 7,
                    ),
                    Icon(
                      Icons.calendar_today_outlined,
                      color: kColorDarkPink,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      toDate!,
                      style: TextStyle(
                          color: kColorGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: kPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kPadding * 3,
                    ),
                    Icon(
                      Icons.lock_clock,
                      color: kColorDarkPink,
                      size: 20,
                    ),
                    SizedBox(
                      width: kPadding * 1.5,
                    ),
                    Text(
                      fromTime!,
                      style: TextStyle(
                          color: kColorGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: kPadding * 10.5,
                    ),
                    Icon(
                      Icons.lock_clock,
                      color: kColorDarkPink,
                      size: 20,
                    ),
                    SizedBox(
                      width: kPadding,
                    ),
                    Text(
                      toTime!,
                      style: TextStyle(
                          color: kColorGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: kPadding * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppButton(
                      width: 90,
                      height: 20,
                      text: "Rate Us",
                      color: kColorDarkBlue,
                    ),
                    AppButton(
                      width: 90,
                      height: 20,
                      text: "Geolocation",
                      color: kColorDarkBlue,
                    ),
                    AppButton(
                      width: 90,
                      height: 20,
                      text: "Survillence",
                      color: kColorDarkBlue,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
