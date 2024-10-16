import 'package:another/common/utils/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: AppColors.primaryText,
      ),
    ),
  );
}
