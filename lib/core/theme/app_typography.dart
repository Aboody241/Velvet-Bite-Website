import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTypography {
  // Headings: Playfair Display
  static TextStyle get heading1 => GoogleFonts.playfairDisplay(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryText,
      );

  static TextStyle get heading2 => GoogleFonts.playfairDisplay(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryText,
      );

  static TextStyle get heading3 => GoogleFonts.playfairDisplay(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryText,
      );

  static TextStyle get heading4 => GoogleFonts.playfairDisplay(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryText,
      );

  // Body: Poppins
  static TextStyle get bodyLarge => GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: AppColors.primaryText,
      );

  static TextStyle get bodyMedium => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.secondaryText,
      );

  static TextStyle get bodySmall => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.secondaryText,
      );

  static TextStyle get buttonText => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryBackground,
      );

  // Prices & Premium Numbers: Cormorant Garamond
  static TextStyle get price => GoogleFonts.cormorantGaramond(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryGold,
      );

  static TextStyle get premiumNumber => GoogleFonts.cormorantGaramond(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.softGold,
      );
}
