import 'package:ecommerce_web_admin_panel/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

class DestktopLayout extends StatelessWidget {
  const DestktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Drawer()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // header
                const VHeader(),

                //body
                body ?? const SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
