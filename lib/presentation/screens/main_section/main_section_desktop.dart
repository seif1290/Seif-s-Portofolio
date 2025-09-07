import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_images.dart';
import 'package:seif_portofolio/presentation/widgets/personal_image_part.dart';
import 'package:seif_portofolio/presentation/widgets/welcoming_and_job_part.dart';

class MainSectionDesktop extends StatelessWidget {
  const MainSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: WelcomingAndJobPart()),
        Expanded(child: PersonalImagePart(image: AppImages.personalImage1)),
      ],
    );
  }
}
