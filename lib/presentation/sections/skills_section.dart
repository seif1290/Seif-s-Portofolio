import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/data/model/skill_model.dart';
import 'package:seif_portofolio/presentation/widgets/build_skill.dart';
import 'package:seif_portofolio/presentation/widgets/rounded_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key, required this.skills});
  final List<SkillModel> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedCard(text: AppStrings.skills),
        const SizedBox(height: AppValues.paddingMedium),

        Text(
          AppStrings.skillsIamGoodAt,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: AppValues.paddingMedium),

        Wrap(
          spacing: AppValues.paddingLarge,
          children: skills
              .map(
                (skill) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BuildSkill(skill: skill),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
