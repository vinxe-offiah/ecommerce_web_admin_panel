import 'package:ecommerce_web_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_web_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VHeader extends StatelessWidget implements PreferredSizeWidget {
  const VHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: VColors.white,
          border: Border(bottom: BorderSide(color: VColors.grey, width: 1))),
      padding: const EdgeInsets.symmetric(
          horizontal: VSizes.md, vertical: VSizes.sm),
      child: AppBar(
        leading: !VDeviceUtils.isDesktopScreen(context)
            ? IconButton(onPressed: () {}, icon: const Icon(Iconsax.menu))
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
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(VDeviceUtils.getAppBarHeight() * 15);
}
