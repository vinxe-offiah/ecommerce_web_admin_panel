import 'package:ecommerce_web_admin_panel/common/widgets/layouts/templates/site_layout.dart';
import 'package:ecommerce_web_admin_panel/features/authentication/screens/login/login.dart';
import 'package:ecommerce_web_admin_panel/routes/app_routes.dart';
import 'package:ecommerce_web_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: VAppTheme.appTheme,
      darkTheme: VAppTheme.darkTheme,
      getPages: VAppRoutes.pages,
      initialRoute: VRoutes.login,
      home: const LoginScreen(),
      unknownRoute: GetPage(
          name: '/Page-not-found',
          page: () =>
              const Scaffold(body: Center(child: Text('Page Not found!')))),
    );
  }
}

// class ResponsiveDesignScreen extends StatelessWidget {
//   const ResponsiveDesignScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const VSiteTemplate(
//         desktop: Desktop(), tablet: Tablet(), mobile: Mobile());
//   }
// }

// class Desktop extends StatelessWidget {
//   const Desktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('I\'M HERE!!!!!'));
//   }
// }

// class Tablet extends StatelessWidget {
//   const Tablet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('I\'M HERE!!!!!'));
//   }
// }

// class Mobile extends StatelessWidget {
//   const Mobile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(color: Colors.blue),
//     );
//   }
// }
