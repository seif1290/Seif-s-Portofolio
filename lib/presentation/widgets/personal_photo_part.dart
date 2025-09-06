import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_images.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/responsive_layout.dart';

class PersonalPhotoPart extends StatelessWidget {
  const PersonalPhotoPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Theme.of(context).colorScheme.secondaryContainer,
          width: 280,
          height: ResponsiveLayout.isMobile(context) ? 280 : 320,
        ),
        Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primary,
              width: 240,
              height: ResponsiveLayout.isMobile(context) ? 280 : 320,
              padding: EdgeInsets.all(AppValues.paddingHorizontalMobile),
              child: Image.asset(AppImages.personalPhoto, fit: BoxFit.cover),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ],
    );
  }
}
