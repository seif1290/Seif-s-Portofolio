import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';

/// A reusable widget that switches between mobile, tablet, and desktop layouts
/// based on the device's width.
class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });
  static double screenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;

  static bool isMobile(BuildContext context) =>
      screenWidth(context) < AppValues.tabletBreakpoint;

  static bool isTablet(BuildContext context) =>
      screenWidth(context) >= AppValues.tabletBreakpoint &&
      screenWidth(context) < AppValues.desktopBreakpoint;

  static bool isDesktop(BuildContext context) =>
      screenWidth(context) >= AppValues.desktopBreakpoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isMobile(context)) {
          return mobile;
        } else if (isTablet(context) && tablet != null) {
          return tablet!;
        } else {
          return desktop;
        }
      },
    );
  }
}
