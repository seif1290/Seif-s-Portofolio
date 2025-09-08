import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/data/model/project_model.dart';
import 'package:seif_portofolio/presentation/widgets/build_project_details.dart';

class BuildProjectCardMobile extends StatelessWidget {
  const BuildProjectCardMobile({super.key, required this.project});
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(maxHeight: 256),
          padding: const EdgeInsets.all(AppValues.paddingLarge),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppValues.cardRadiusSmall),
              topRight: Radius.circular(AppValues.cardRadiusSmall),
            ),
          ),
          child: AspectRatio(
            aspectRatio: AppValues.projectImageAspectRatio,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppValues.cardRadiusSmall),
              child: Image.asset(project.image, fit: BoxFit.fill),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppValues.paddingMedium),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppValues.cardRadiusSmall),
              bottomRight: Radius.circular(AppValues.cardRadiusSmall),
            ),
          ),

          child: BuildProjectDetails(project: project),
        ),
      ],
    );
  }
}
