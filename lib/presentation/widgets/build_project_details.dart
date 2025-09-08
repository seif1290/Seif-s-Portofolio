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
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
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
              if (!await launchUrl(url)) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('csddcs')));
              }
            },
            icon: const Icon(Icons.open_in_new),
          ),
        ],
      ),
    );
  }
}
