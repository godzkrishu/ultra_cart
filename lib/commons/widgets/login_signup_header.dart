import 'package:flutter/material.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/size.dart';
import '../../utils/constants/text.dart';
class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// logo
          Image.asset(
            dark ? TImages.tDarkAppLogo : TImages.tLightAppLogo,
            height: 150,
          ),
          Text(
            TTexts.tLoginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: TSizes.sm),
          Text(
            TTexts.tLoginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]);
  }
}


