import 'package:ecommerce_web_admin_panel/common/widgets/responsive/responsive_design.dart';
import 'package:ecommerce_web_admin_panel/common/widgets/responsive/screens/desktop_layout.dart';
import 'package:ecommerce_web_admin_panel/common/widgets/responsive/screens/mobile_layout.dart';
import 'package:ecommerce_web_admin_panel/common/widgets/responsive/screens/tablet_layout.dart';
import 'package:flutter/material.dart';

class VSiteTemplate extends StatelessWidget {
  const VSiteTemplate({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VResponsiveWidget(
        desktop:
            useLayout ? DestktopLayout(body: desktop) : desktop ?? Container(),
        tablet: useLayout
            ? TabletLayout(body: tablet ?? desktop)
            : tablet ?? desktop ?? Container(),
        mobile: useLayout
            ? MobileLayout(body: mobile ?? desktop)
            : mobile ?? desktop ?? Container(),
      ),
    );
  }
}
