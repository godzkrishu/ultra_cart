import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/devices/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class SmoothIndicatorButton extends StatelessWidget {
  final PageController controller;
  final int totalPage;
  const SmoothIndicatorButton({
    super.key,
    required this.controller,
    required this.totalPage,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller,
        count: totalPage,
        effect: ExpandingDotsEffect(
            activeDotColor: dark? TColors.primary : TColors.dark,
            dotHeight: 6
        ),
      ),
    );
  }
}