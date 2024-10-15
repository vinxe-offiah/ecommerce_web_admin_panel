import 'package:ecommerce_web_admin_panel/common/widgets/layouts/sidebars/sidebar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    final menuController = Get.put(SidebarController());

    return InkWell(
      onTap: () => menuController.menuOnTap(route),
      onHover: (hovering) => hovering
          ? menuController.changeHoverItem(route)
          : menuController.changeHoverItem(''),
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: VSizes.md / 2),
          child: Container(
            decoration: BoxDecoration(
              color: menuController.isActive(route) ||
                      menuController.isHovering(route)
                  ? VColors.primary
                  : Colors.transparent,
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
                  child: menuController.isActive(route)
                      ? Icon(icon, size: 22, color: VColors.white)
                      : Icon(icon,
                          size: 22,
                          color: menuController.isHovering(route)
                              ? VColors.white
                              : VColors.darkGrey),
                ),

                //Text
                if (menuController.isHovering(route) ||
                    menuController.isActive(route))
                  Flexible(
                    child: Text(itemName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: VColors.white)),
                  )
                else
                  Flexible(
                    child: Text(itemName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: VColors.darkGrey)),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
