import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:uiitask/response/model/booking_model_class.dart';
import 'package:uiitask/utlis/constants/app_constants.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  var packageList = <BookingData>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getBookingData();
  }

  ///returns api data
  Future<void> getBookingData() async {
    var respData;
    var url = Uri.parse(apiURL);
    var response = await http.get(url);
    respData = json.decode(response.body);
    isLoading.value = false;
    packageList.assign(BookingData.fromJson(respData));
  }
}
