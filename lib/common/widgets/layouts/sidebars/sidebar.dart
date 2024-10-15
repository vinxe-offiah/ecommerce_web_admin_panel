import 'package:ecommerce_web_admin_panel/common/widgets/images/V_circular_image.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../routes/routes.dart';
import 'menu/menu_item.dart';

class VSidebar extends StatelessWidget {
  const VSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: VColors.white,
          border: Border(right: BorderSide(color: VColors.grey, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Image
              const VCircularImage(
                  height: 80,
                  width: 80,
                  image: VImages.myLogo,
                  backgroundColor: Colors.transparent),
              const SizedBox(height: VSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(VSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('MENU',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(letterSpacingDelta: 1.2)),
                    // menu Items
                    const VMenuItem(
                        route: VRoutes.login,
                        icon: Iconsax.status,
                        itemName: 'Dashboard'),
                    const VMenuItem(
                        route: 'you', icon: Iconsax.image, itemName: 'Media'),
                    const VMenuItem(
                        route: 'me',
                        icon: Iconsax.picture_frame,
                        itemName: 'banners'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
