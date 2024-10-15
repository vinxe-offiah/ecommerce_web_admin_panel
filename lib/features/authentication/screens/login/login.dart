import 'package:ecommerce_web_admin_panel/common/widgets/layouts/templates/site_layout.dart';
import 'package:ecommerce_web_admin_panel/features/authentication/screens/login/responsive_screens/login_desktop_tablet.dart';
import 'package:ecommerce_web_admin_panel/features/authentication/screens/login/responsive_screens/login_mobile.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const VSiteTemplate(
      useLayout: false,
      desktop: LoginScreenDesktopTablet(),
      mobile: LoginScreenMobile(),
    );
  }
}
