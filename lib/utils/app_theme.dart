import 'package:flutter/material.dart';
import 'package:space/utils/app_colors.dart';
import 'package:space/utils/app_styles.dart';

class AppTheme{
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainColor,
        foregroundColor: AppColors.white,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(39)
        ),
        textStyle: AppStyles.white20semiBOlb
      )
    )
  );
}