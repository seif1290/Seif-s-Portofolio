import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seif_portofolio/core/ui/app_text_theme.dart';
import 'package:seif_portofolio/core/ui/app_values.dart';

ThemeData get appTheme {
  final textTheme = desktopTextTheme;
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
    fontFamily: GoogleFonts.inter().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.defaultGrey,
      actionsIconTheme: IconThemeData(color: AppColors.grey600),
      titleTextStyle: GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        fontSize: AppValues.fontSizeH1Desktop,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(color: Color(0XFF39C0D4)),
      ),
    ),
  );
}
