import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/constants/app_values.dart';

class DrawerSectionRow extends StatelessWidget {
  const DrawerSectionRow({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppValues.paddingMedium),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(icon),
            const SizedBox(width: AppValues.paddingSmall),
            Text(text),
          ],
        ),
      ),
    );
  }
}
