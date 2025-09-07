import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_images.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/presentation/widgets/personal_image_part.dart';
import 'package:seif_portofolio/presentation/widgets/rounded_card.dart';

class IntroductionSectionMobile extends StatelessWidget {
  const IntroductionSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RoundedCard(text: AppStrings.aboutMe),
        const SizedBox(height: AppValues.paddingMedium),
        PersonalImagePart(
          image: AppImages.personalImage2,
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        Text(
          AppStrings.aboutMeDetails,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
