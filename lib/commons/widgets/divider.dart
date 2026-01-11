import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/text.dart';

class FormDivider extends StatelessWidget {
  final String text;
  const FormDivider({
    super.key,
    required this.dark,
    required this.text,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark?TColors.darkGrey:TColors.grey,
            thickness: 0.5,
            indent: 6,
            endIndent: 5,

          ),
        ),
        Text(text),
        Flexible(
          child: Divider(
            color: dark?TColors.darkGrey:TColors.grey,
            thickness: 0.5,
            indent: 6,
            endIndent: 5,

          ),
        ),

      ],
    );
  }
}
