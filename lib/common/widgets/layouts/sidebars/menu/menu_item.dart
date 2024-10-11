import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class VMenuItem extends StatelessWidget {
  const VMenuItem({
    super.key,
    required this.route,
    required this.icon,
    required this.itemName,
  });

  final String route;
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: VSizes.md / 2),
      child: Container(
        decoration: BoxDecoration(
          color: VColors.primary,
          borderRadius: BorderRadius.circular(VSizes.cardRadiusMd),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Icon
            Padding(
              padding: const EdgeInsets.only(
                  left: VSizes.lg,
                  top: VSizes.md,
                  right: VSizes.md,
                  bottom: VSizes.md),
              child: Icon(icon, color: VColors.white),
            ),

            //Text
            Text(itemName,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: VColors.white)),
          ],
        ),
      ),
    );
  }
}
