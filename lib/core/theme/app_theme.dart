import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryGold,
      scaffoldBackgroundColor: AppColors.primaryBackground,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryGold,
        secondary: AppColors.softGold,
        surface: AppColors.secondaryBackground,
        error: Colors.redAccent,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryBackground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.heading3,
        iconTheme: const IconThemeData(color: AppColors.primaryGold),
      ),
      textTheme: TextTheme(
        displayLarge: AppTypography.heading1,
        displayMedium: AppTypography.heading2,
        displaySmall: AppTypography.heading3,
        headlineMedium: AppTypography.heading4,
        bodyLarge: AppTypography.bodyLarge,
        bodyMedium: AppTypography.bodyMedium,
        bodySmall: AppTypography.bodySmall,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGold,
          foregroundColor: AppColors.primaryBackground,
          textStyle: AppTypography.buttonText,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryGold,
          side: const BorderSide(color: AppColors.primaryGold, width: 1.5),
          textStyle: AppTypography.buttonText.copyWith(color: AppColors.primaryGold),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.border,
        thickness: 1,
      ),
    );
  }
}
