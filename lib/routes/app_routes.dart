import 'package:ecommerce_web_admin_panel/features/authentication/screens/login/login.dart';
import 'package:ecommerce_web_admin_panel/routes/routes.dart';
import 'package:get/get.dart';

class VAppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: VRoutes.login, page: () => const LoginScreen())
  ];
}
