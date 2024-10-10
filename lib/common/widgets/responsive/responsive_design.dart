import 'package:ecommerce_web_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class VResponsiveWidget extends StatelessWidget {
  const VResponsiveWidget(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= VSizes.desktopScreenSize) {
          return desktop;
        } else if (constraints.maxWidth < VSizes.desktopScreenSize &&
            constraints.maxWidth >= VSizes.tabletScreenSize) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
