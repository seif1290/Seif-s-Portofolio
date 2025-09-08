import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/constants/desktop_app_bar_actions.dart';
import 'package:seif_portofolio/core/ui/responsive_layout.dart';
import 'package:seif_portofolio/data/data_source/projects_data_source.dart';
import 'package:seif_portofolio/data/data_source/skills_data_source.dart';
import 'package:seif_portofolio/presentation/sections/introduction_section/introduction_section_desktop.dart';
import 'package:seif_portofolio/presentation/sections/introduction_section/introduction_section_mobile.dart';
import 'package:seif_portofolio/presentation/sections/main_section/main_section_desktop.dart';
import 'package:seif_portofolio/presentation/sections/main_section/main_section_mobile.dart';
import 'package:seif_portofolio/presentation/sections/skills_section.dart';
import 'package:seif_portofolio/presentation/sections/work_section.dart';
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: _screenMainPadding(),
                color: Theme.of(context).colorScheme.primary,
                child: const ResponsiveLayout(
                  mobile: MainSectionMobile(),
                  tablet: MainSectionMobile(),
                  desktop: MainSectionDesktop(),
                ),
              ),
              Container(
                width: double.infinity,
                padding: _screenMainPadding(),
                color: Theme.of(context).colorScheme.secondary,
                child: ResponsiveLayout(
                  mobile: const IntroductionSectionMobile(),
                  tablet: const IntroductionSectionMobile(),
                  desktop: const IntroductionSectionDesktop(),
                ),
              ),
              Container(
                width: double.infinity,
                padding: _screenMainPadding(),
                color: Theme.of(context).colorScheme.primary,
                child: SkillsSection(skills: SkillsDataSource.getSkills),
              ),
              Container(
                width: double.infinity,
                padding: _screenMainPadding(),
                color: Theme.of(context).colorScheme.secondary,
                child: WorkSection(projects: ProjectsDataSource.getProjects),
              ),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets _screenMainPadding() {
    return const EdgeInsets.symmetric(
      vertical: AppValues.paddingVerticalMobile,
      horizontal: AppValues.paddingHorizontalMobile,
    );
  }
}
