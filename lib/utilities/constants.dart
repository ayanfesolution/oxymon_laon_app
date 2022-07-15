import 'package:flutter/material.dart';

class AppColors {
  // Main Colors
  static const Color primaryColor = Color(0xFF25B175);
  static const Color secondaryColor = Color(0xFF3A7DBC);

  // Text Colors
  static const Color mainTextColor = Color(0xFF011017);
  static const Color secondarygrayTextColor = Color(0xFF484D50);

  //Widget Colors Usage
  static const Color textWidgetFilledColor = Color(0xFFE9EAEC);
}

const oMainTextBigBoldTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  color: AppColors.mainTextColor
);

const oMainTextLargeBoldTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: AppColors.mainTextColor
);

const oBrandNameTextStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 30,
    color: AppColors.primaryColor
);