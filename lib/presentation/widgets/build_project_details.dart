import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';
import 'package:seif_portofolio/data/model/project_model.dart';
import 'package:seif_portofolio/presentation/widgets/rounded_card.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildProjectDetails extends StatelessWidget {
  const BuildProjectDetails({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final url = Uri.parse(project.link);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.name,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: AppColors.white),
          ),
          const SizedBox(height: 24.0),
          Text(
            project.description,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 24.0),
          Wrap(
            children: project.technologies
                .map((technology) => RoundedCard(text: technology))
                .toList(),
          ),
          const SizedBox(height: 24.0),
          IconButton(
            onPressed: () async {
              if (!await launchUrl(url) && !context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Unable to open link now')),
                );
              }
            },
            icon: const Icon(Icons.open_in_new),
          ),
        ],
      ),
    );
  }
}
