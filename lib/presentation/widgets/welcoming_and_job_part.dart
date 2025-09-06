import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';

class WelcomingAndJobPart extends StatelessWidget {
  const WelcomingAndJobPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.welcomingAndName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: AppValues.paddingMedium),
        Text(AppStrings.mainJob, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: AppValues.paddingLarge),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.circle, size: 8, color: AppColors.emerald),
            const SizedBox(width: AppValues.paddingHorizontalMobile),
            Text(
              AppStrings.available,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
