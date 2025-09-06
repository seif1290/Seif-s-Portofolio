import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/constants/desktop_app_bar_actions.dart';
import 'package:seif_portofolio/core/ui/responsive_layout.dart';
import 'package:seif_portofolio/presentation/screens/introduction_section/introduction_section_desktop.dart';
import 'package:seif_portofolio/presentation/screens/introduction_section/introduction_section_mobile.dart';
import 'package:seif_portofolio/presentation/widgets/mobile_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.fullName,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: AppValues.fontSizeH1Mobile,
            ),
          ),
          actions: ResponsiveLayout.isMobile(context)
              ? null
              : desktopAppBarActions,
        ),
        endDrawer: ResponsiveLayout.isMobile(context)
            ? const MobileDrawer()
            : null,

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppValues.paddingVerticalMobile,
              horizontal: AppValues.paddingHorizontalMobile,
            ),
            child: Column(
              children: [
                ResponsiveLayout(
                  mobile: IntroductionSectionMobile(),
                  tablet: IntroductionSectionMobile(),
                  desktop: IntroductionSectionDesktop(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
