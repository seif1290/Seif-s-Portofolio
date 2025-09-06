import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seif_portofolio/core/ui/app_text_theme.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/responsive_layout.dart';

ThemeData appTheme(BuildContext context) {
  final textTheme = ResponsiveLayout.isDesktop(context)
      ? desktopTextTheme
      : tabletMobileTextTheme;
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.defaultGrey,
    textTheme: textTheme,
    colorScheme: const ColorScheme.dark().copyWith(
      surface: AppColors.defaultGrey,
      primary: AppColors.defaultGrey,
      secondary: AppColors.grey50,
      primaryContainer: AppColors.grey100,
      secondaryContainer: AppColors.grey200,
      tertiaryContainer: AppColors.grey300,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.grey100,
      thickness: 1,
      space: AppValues.paddingMedium,
    ),
    fontFamily: GoogleFonts.inter().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.defaultGrey,

      titleTextStyle: GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        textStyle: Theme.of(context).textTheme.headlineLarge,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.grey600,
        textStyle: TextStyle(
          color: AppColors.grey600,
          fontWeight: FontWeight.w500,
          fontSize: AppValues.fontSizeBody2,
          height: AppValues.lineHeightBody2 / AppValues.fontSizeBody2,
        ),
      ),
    ),
  );
}
