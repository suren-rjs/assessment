import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static final AppColors instance = AppColors._();
  var primaryColor = const Color(0xffececec);
  var dashboardTextColor = const Color(0xff787878);
  var dashboardTitleTextColor = const Color(0xff4a4a4a);
  var buttonTextColor = const Color(0xff242424);
}

AppColors colors = AppColors.instance;
