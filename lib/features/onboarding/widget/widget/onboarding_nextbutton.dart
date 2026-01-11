import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class OnboardingNextButton extends StatelessWidget {
  final VoidCallback ontap;
  const OnboardingNextButton({
    super.key, required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark? TColors.primary :TColors.dark,
        ),
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}