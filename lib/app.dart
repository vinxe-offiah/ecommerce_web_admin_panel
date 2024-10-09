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
      home: const Scaffold(body: Center(child: Text('ADMIN PANEL'))),
    );
  }
}
