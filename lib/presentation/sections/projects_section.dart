import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/responsive_layout.dart';
import 'package:seif_portofolio/data/model/project_model.dart';
import 'package:seif_portofolio/presentation/widgets/build_project_card_desktop.dart';
import 'package:seif_portofolio/presentation/widgets/build_project_card_mobile.dart';
import 'package:seif_portofolio/presentation/widgets/rounded_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key, required this.projects});
  final List<ProjectModel> projects;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RoundedCard(text: AppStrings.work),
        const SizedBox(height: AppValues.paddingMedium),

        Text(
          AppStrings.noteworthyProjects,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 48.0),
        ListView.builder(
          itemCount: projects.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),

          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: ResponsiveLayout(
                mobile: BuildProjectCardMobile(project: projects[index]),
                desktop: BuildProjectCardDesktop(project: projects[index]),
              ),
            );
          },
        ),
      ],
    );
  }
}
