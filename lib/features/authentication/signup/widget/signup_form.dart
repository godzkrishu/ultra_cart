import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text.dart';
import '../../login/screen/login_screen.dart';



class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: "Fist Name",
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: "Last Name",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          //username
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: "Username",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          //email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          //phons
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.mobile),
              labelText: "Mobile",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          //password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          /// term and condition
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                          text: 'Agree To  ', style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: 'Privacy Policy  ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark?TColors.white:TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark?TColors.white:TColors.primary,
                        ),
                        ),
                        TextSpan(
                          text: 'And  ', style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: 'Terms of Use ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark?TColors.white:TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark?TColors.white:TColors.primary,
                        ),
                        ),
                      ]
                  )
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          ///Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          ///create account
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Text(TTexts.signIn),
            ),
          ),
        ],
      ),
    );
  }
}