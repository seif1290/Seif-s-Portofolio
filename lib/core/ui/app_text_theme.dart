import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';

TextTheme get desktopTextTheme => TextTheme(
  headlineLarge: TextStyle(
    fontSize: AppValues.fontSizeH1Desktop,
    fontWeight: FontWeight.w700,
    height: AppValues.lineHeightH1Desktop / AppValues.fontSizeH1Desktop,
  ),
  headlineMedium: TextStyle(
    fontSize: AppValues.fontSizeH2Desktop,
    fontWeight: FontWeight.w600,
    height: AppValues.lineHeightH2Desktop / AppValues.fontSizeH2Desktop,
  ),
  headlineSmall: TextStyle(
    fontSize: AppValues.fontSizeH3Desktop,
    fontWeight: FontWeight.w600,
    height: AppValues.lineHeightH3Desktop / AppValues.fontSizeH3Desktop,
  ),
  titleLarge: TextStyle(
    fontSize: AppValues.fontSizeSubtitleDesktop,
    height:
        AppValues.lineHeightSubtitleDesktop / AppValues.fontSizeSubtitleDesktop,
    color: AppColors.grey600,
  ),
  labelLarge: TextStyle(
    fontSize: AppValues.fontSizeBody1Desktop,
    color: AppColors.grey600,
    height: AppValues.lineHeightBody1Desktop / AppValues.fontSizeBody1Desktop,
  ),
  labelMedium: TextStyle(
    fontSize: AppValues.fontSizeBody2,
    height: AppValues.lineHeightBody2 / AppValues.fontSizeBody2,
  ),
  labelSmall: TextStyle(
    fontSize: AppValues.fontSizeBody3,
    height: AppValues.lineHeightBody3 / AppValues.fontSizeBody3,
  ),
);

TextTheme get tabletMobileTextTheme => TextTheme(
  headlineLarge: TextStyle(
    fontSize: AppValues.fontSizeH1Mobile,
    fontWeight: FontWeight.w700,
    height: AppValues.lineHeightH1Mobile / AppValues.fontSizeH1Mobile,
  ),
  headlineMedium: TextStyle(
    fontSize: AppValues.fontSizeH2TabletMobile,
    fontWeight: FontWeight.w600,
    height:
        AppValues.lineHeightH2TabletMobile / AppValues.fontSizeH2TabletMobile,
  ),
  headlineSmall: TextStyle(
    fontSize: AppValues.fontSizeH3TabletMobile,
    fontWeight: FontWeight.w600,
    height:
        AppValues.lineHeightH3TabletMobile / AppValues.fontSizeH3TabletMobile,
  ),
  titleLarge: TextStyle(
    fontSize: AppValues.fontSizeSubtitleTabletMobile,
    height:
        AppValues.lineHeightSubtitleTabletMobile /
        AppValues.fontSizeSubtitleTabletMobile,
    color: AppColors.grey600,
  ),
  labelLarge: TextStyle(
    fontSize: AppValues.fontSizeBody1TabletMobile,
    height:
        AppValues.lineHeightBody1TabletMobile /
        AppValues.fontSizeBody1TabletMobile,
    color: AppColors.grey600,
  ),
  labelMedium: TextStyle(
    fontSize: AppValues.fontSizeBody2,
    height: AppValues.lineHeightBody2 / AppValues.fontSizeBody2,
    color: AppColors.grey600,
  ),
  labelSmall: TextStyle(
    fontSize: AppValues.fontSizeBody3,
    height: AppValues.lineHeightBody3 / AppValues.fontSizeBody3,
  ),
);
