import 'package:flutter/material.dart';
import 'package:seif_portofolio/presentation/widgets/personal_photo_part.dart';
import 'package:seif_portofolio/presentation/widgets/welcoming_and_job_part.dart';

class IntroductionSectionDesktop extends StatelessWidget {
  const IntroductionSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: WelcomingAndJobPart()),
        Expanded(child: PersonalPhotoPart()),
      ],
    );
  }
}
