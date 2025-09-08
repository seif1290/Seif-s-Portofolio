import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/data/model/project_model.dart';
import 'package:seif_portofolio/presentation/widgets/build_project_details.dart';

class BuildProjectCardDesktop extends StatelessWidget {
  const BuildProjectCardDesktop({super.key, required this.project});
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(AppValues.cardRadiusSmall),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppValues.paddingLarge),
              child: AspectRatio(
                aspectRatio: 480 / 384,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppValues.cardRadiusSmall,
                  ),
                  child: Image.asset(project.image, fit: BoxFit.cover),
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              padding: const EdgeInsets.all(AppValues.paddingLarge),
              child: BuildProjectDetails(project: project),
            ), // right container
          ),
        ],
      ),
    ); //card container
  }
}
