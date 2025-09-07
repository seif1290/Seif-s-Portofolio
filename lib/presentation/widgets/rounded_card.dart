import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppValues.cardRadiusLarge),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppValues.paddingMedium,
          vertical: AppValues.paddingSmall,
        ),
        child: Text(text, style: Theme.of(context).textTheme.labelSmall),
      ),
    );
  }
}
