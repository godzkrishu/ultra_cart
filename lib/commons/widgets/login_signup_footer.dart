import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/size.dart';
class LoginSignUpFooter extends StatelessWidget {
  const LoginSignUpFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: (){

              }, icon: Image.asset(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              TImages.tGoogleLogo)
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: (){

              }, icon: Image.asset(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              TImages.tFacebookLogo)
          ),
        ),
      ],

    );
  }
}