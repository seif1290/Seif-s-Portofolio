import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';
import 'package:seif_portofolio/presentation/widgets/rounded_card.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const RoundedCard(text: 'Education'),
        const SizedBox(height: AppValues.paddingLarge),

        Column(
          children: const [
            _EducationItem(
              institution: "Ain Shams University",
              degree: "Bachelor of Computer Science",
              duration: "2023 – Present",
              description:
                  'Currently pursuing my degree with a focus on software engineering, mobile app development, Computer Architecture, Data Structures, Algorithms, OOP, Databases and more..',
            ),
          ],
        ),
      ],
    );
  }
}

class _EducationItem extends StatelessWidget {
  final String institution;
  final String degree;
  final String duration;
  final String description;

  const _EducationItem({
    required this.institution,
    required this.degree,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppValues.paddingMedium),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(AppValues.cardRadiusSmall),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            institution,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "$degree • $duration",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 12.0),
          Text(description, style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}
