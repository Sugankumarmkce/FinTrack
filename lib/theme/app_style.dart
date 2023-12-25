import 'package:flutter/material.dart';
import 'package:fintrack/core/app_export.dart';

class AppStyle {
  static TextStyle txtGilroySemiBold24 = TextStyle(
    color: ColorConstant.blueGray900,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtGilroyMedium14 = TextStyle(
    color: ColorConstant.blueA700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtGilroyMedium16 = TextStyle(
    color: ColorConstant.blueGray900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
  );
}
