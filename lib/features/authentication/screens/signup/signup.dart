import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GetItSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(GetItTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: GetItSizes.spaceBetweenSections),
              const GetItSignUpForm(),
              const SizedBox(height: GetItSizes.spaceBetweenSections),
              GetItDivider(dividerText: GetItTexts.orSignUpWith.capitalize!),
              const SizedBox(height: GetItSizes.spaceBetweenSections),
              const GetItSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
