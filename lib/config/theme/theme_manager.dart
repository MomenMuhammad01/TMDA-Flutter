import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/core/util/assets_manager.dart';
import 'package:tmda/core/util/color_manager.dart';

class ThemeManager {
  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      fontFamily: AssetsManager.fontFamily,
      primaryColor: ColorsManager.primaryColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        titleSmall: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: ColorsManager.darkPrimary,
            ),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.bottomNavigationColor.withOpacity(0.5),
        selectedItemColor: ColorsManager.primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.6),
      ),
    );
  }
}
