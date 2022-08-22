import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypography {
  const AppTypography._();

  static TextTheme get textTheme => const TextTheme(
        headlineLarge: TextStyle(
          color: AppColors.black,
          fontSize: 30,
        ),
        headlineMedium: TextStyle(
          color: AppColors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          color: AppColors.black,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          color: AppColors.black,
          fontSize: 24,
          // fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          color: AppColors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          color: AppColors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: AppColors.black,
          fontSize: 18,
        ),
        bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 16,
        ),
        bodySmall: TextStyle(
          color: AppColors.black,
          fontSize: 14,
        ),
      );
}
