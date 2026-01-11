import 'package:flutter/material.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/devices/device_utility.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback ontap;
  const SkipButton({
    super.key,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(onPressed: ontap, child: Text("Skip"))
    );
  }
}