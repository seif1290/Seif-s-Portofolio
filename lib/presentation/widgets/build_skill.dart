import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seif_portofolio/data/model/skill_model.dart';

class BuildSkill extends StatelessWidget {
  const BuildSkill({super.key, required this.skill});
  final SkillModel skill;

  @override
  Widget build(BuildContext context) {
    final isSvg = skill.icon.toLowerCase().endsWith('.svg');

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Column(
          children: [
            if (isSvg)
              SvgPicture.asset(skill.icon, width: 64.0, height: 64.0)
            else
              Image.asset(skill.icon, width: 64.0, height: 64.0),

            Text(skill.name, style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}
