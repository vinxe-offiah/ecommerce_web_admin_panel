import 'package:ecommerce_web_admin_panel/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const VHeader(),
      body: body ?? Container(),
    );
  }
}
