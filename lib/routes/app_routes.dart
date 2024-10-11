import 'package:ecommerce_web_admin_panel/app.dart';
import 'package:ecommerce_web_admin_panel/routes/routes.dart';
import 'package:get/get.dart';

class VAppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: VRoutes.home, page: () => const ResponsiveDesignScreen())
  ];
}
