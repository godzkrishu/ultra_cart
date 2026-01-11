import 'package:flutter/material.dart';
import '../../../../commons/widgets/divider.dart';
import '../../../../commons/widgets/login_signup_footer.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../widget/signup_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all( TSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///header text and back button
              Text(
                TTexts.tSignUpSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              ///Form
              SignupForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwItems),
              FormDivider(dark: dark,text: TTexts.tOR,),
              // footer
              SizedBox(height: TSizes.sm),
              LoginSignUpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}


