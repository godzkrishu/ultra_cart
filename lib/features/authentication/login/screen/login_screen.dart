import 'package:flutter/material.dart';
import 'package:ultra_cart/utils/constants/size.dart';
import 'package:ultra_cart/utils/helpers/helper_functions.dart';
import '../../../../commons/styles/spacing _style.dart';
import '../../../../commons/widgets/divider.dart';
import '../../../../commons/widgets/login_signup_footer.dart';
import '../../../../commons/widgets/login_signup_header.dart';
import '../../../../utils/constants/text.dart';
import '../widget/login_form.dart';

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
              LoginHeader(dark: dark),

                  /// Form
                  LoginForm(),
                  ///divider
                  FormDivider(dark: dark,text: TTexts.tOR,),
                  SizedBox(height: TSizes.sm),
                  ///footer
                  LoginSignUpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}







