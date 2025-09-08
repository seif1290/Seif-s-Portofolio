import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/constants/desktop_app_bar_actions.dart';
import 'package:seif_portofolio/presentation/widgets/drawer_section_row.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key, required this.onDrawerSectionRowTap});
  final Function(int index) onDrawerSectionRowTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.only(top: AppValues.paddingMedium),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: Text(
            AppStrings.fullName,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: const Divider(),
          ),
        ),

        body: Column(
          spacing: AppValues.paddingHorizontalMobile,
          children: List.generate(
            desktopAppBarActions.length,
            (index) => DrawerSectionRow(
              text: desktopAppBarActions[index],
              icon: desktopAppBarActionsIcons[index],
              onTap: () {
                onDrawerSectionRowTap(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
