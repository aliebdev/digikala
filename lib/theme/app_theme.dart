import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.mainRed,
    ),
    fontFamily: "Kalameh",
    textTheme: AppTypography.textTheme,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.darkGrey200,
      unselectedItemColor: AppColors.lightGrey200,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      backgroundColor: Colors.white,
      elevation: 10,
      selectedIconTheme: IconThemeData(size: 29),
      unselectedIconTheme: IconThemeData(size: 29),
    ),
  );
}
