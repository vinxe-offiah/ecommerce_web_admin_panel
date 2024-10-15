import 'package:ecommerce_web_admin_panel/common/styles/spacing_styles.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Container(
            padding: VSpacingStyle.paddingWithAppBarHeight,
            decoration: BoxDecoration(
              color: VColors.white,
              borderRadius: BorderRadius.circular(VSizes.cardRadiusLg),
            ),
            child: Column(
              children: [
                //Header
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Image(
                          image: AssetImage(VImages.myLogo),
                          width: 100,
                          height: 100),
                      const SizedBox(height: VSizes.spaceBtwSections),
                      Text(VTexts.loginTitle,
                          style: Theme.of(context).textTheme.headlineMedium),
                      const SizedBox(height: VSizes.sm),
                      Text(VTexts.loginSubtitle,
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
