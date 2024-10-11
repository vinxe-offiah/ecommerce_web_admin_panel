import 'package:ecommerce_web_admin_panel/common/widgets/images/v_rounded_image.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_web_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VHeader extends StatelessWidget implements PreferredSizeWidget {
  const VHeader({super.key, this.scaffoldKey});

  //Global key to access the scaffold state
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: VColors.white,
          border: Border(bottom: BorderSide(color: VColors.grey, width: 1))),
      padding: const EdgeInsets.symmetric(
          horizontal: VSizes.md, vertical: VSizes.sm),
      child: AppBar(
        // Mobile menu
        leading: !VDeviceUtils.isDesktopScreen(context)
            ? IconButton(
                onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                icon: const Icon(Iconsax.menu))
            : null,
        title: VDeviceUtils.isDesktopScreen(context)
            ? SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.search_normal),
                      hintText: 'Search anything...'),
                ),
              )
            : null,

        // Actions
        actions: [
          // search icon on mobile
          if (!VDeviceUtils.isDesktopScreen(context))
            IconButton(
                onPressed: () {}, icon: const Icon(Iconsax.search_normal)),

          // Notification icon
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.notification)),
          const SizedBox(width: VSizes.spaceBtwItems / 2),

          // User data
          Row(
            children: [
              const VRoundedImage(
                width: 40,
                height: 40,
                padding: 2,
                imageType: ImageType.asset,
                image: VImages.user,
              ),
              const SizedBox(width: VSizes.sm),
              if (!VDeviceUtils.isMobileScreen(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Vinxes III',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text('vinxes@gmail.com',
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(VDeviceUtils.getAppBarHeight() * 15);
}
