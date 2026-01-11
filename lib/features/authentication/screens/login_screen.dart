import 'package:flutter/material.dart';
import 'package:ultra_cart/utils/helpers/helper_functions.dart';

import '../../../commons/styles/spacing _style.dart';
import '../../../utils/constants/images.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
     bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
             /// logo title  subtitle
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   /// logo
                    Image.asset(
                    dark?  TImages.tDarkAppLogo:TImages.tLightAppLogo,
                      height: 150,
                    )
                 ],
               )
            ],
          ),

        ),
      ),
    );
  }
}
