import 'package:flutter_screenutil/flutter_screenutil.dart';

const baseUrl = 'http://cgprojects.in/flutter/';

const kPadding = 8.0;
final kWidth = 8.0.w;
final kHeight = 8.0.h;
final kRadius = 8.0.r;

final String apiURL = "http://cgprojects.in/flutter/";

double? setHeight(num height) => ScreenUtil().setHeight(height);
double? setWidth(num width) => ScreenUtil().setWidth(width);
double? setRadius(num radius) => ScreenUtil().radius(radius);
double? setFontSize(num fontSize) => ScreenUtil().setSp(fontSize);
