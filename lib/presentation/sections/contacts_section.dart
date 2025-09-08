import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seif_portofolio/core/constants/app_icons.dart';
import 'package:seif_portofolio/core/constants/app_strings.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';
import 'package:seif_portofolio/core/ui/app_colors.dart';
import 'package:seif_portofolio/presentation/widgets/rounded_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const RoundedCard(text: AppStrings.getInTouch),
        Text(
          AppStrings.reachOutToMe,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: AppValues.paddingLarge),

        // Email
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.email, color: AppColors.grey600),
            const SizedBox(width: AppValues.paddingSmall),
            SelectableText(
              AppStrings.email,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            IconButton(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: AppStrings.email));
              },
              icon: Icon(Icons.copy_outlined, color: AppColors.grey600),
            ),
          ],
        ),
        const SizedBox(height: AppValues.paddingMedium),

        // Phone
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.phone, color: AppColors.grey600),
            const SizedBox(width: AppValues.paddingSmall),
            SelectableText(
              AppStrings.phoneNumber,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            IconButton(
              onPressed: () async {
                await Clipboard.setData(
                  ClipboardData(text: AppStrings.phoneNumber),
                );
              },
              icon: Icon(Icons.copy_outlined, color: AppColors.grey600),
            ),
          ],
        ),
        const SizedBox(height: AppValues.paddingLarge),
        const Text(
          AppStrings.findMeInThesePlatforms,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(AppStrings.githubProfileLink)) &&
                    !context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Unable to open link now')),
                  );
                }
              },
              icon: SvgPicture.asset(
                AppIcons.github,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () async {
                if (!await launchUrl(
                      Uri.parse(AppStrings.linkedinProfileLink),
                    ) &&
                    !context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Unable to open link now')),
                  );
                }
              },
              icon: SvgPicture.asset(
                AppIcons.linkedin,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
