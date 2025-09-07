import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';
import 'package:seif_portofolio/core/ui/responsive_layout.dart';

class PersonalImagePart extends StatelessWidget {
  const PersonalImagePart({
    super.key,
    required this.image,
    this.backgroundColor = AppColors.defaultGrey,
  });
  final String image;
  final Color backgroundColor;

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
              width: 260,
              height: ResponsiveLayout.isMobile(context) ? 280 : 320,
              padding: EdgeInsets.all(AppValues.paddingSmall),
              color: backgroundColor,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ],
    );
  }
}
