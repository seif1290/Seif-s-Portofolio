import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_images.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/presentation/widgets/personal_image_part.dart';
import 'package:seif_portofolio/presentation/widgets/welcoming_and_job_part.dart';

class MainSectionMobile extends StatelessWidget {
  const MainSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonalImagePart(image: AppImages.personalImage1),
        const SizedBox(height: AppValues.paddingLarge),
        WelcomingAndJobPart(),
      ],
    );
  }
}
