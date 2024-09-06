import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/features/authentication/screens/signup/signup.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: GetItTexts.email,
            ),
          ),
          const SizedBox(height: GetItSizes.spaceBetweenInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: GetItTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: GetItSizes.small),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(GetItTexts.rememberMe),
                ],
              ),
              const TextButton(
                onPressed: null,
                child: Text(GetItTexts.forgotPassword),
              ),
            ],
          ),
          const SizedBox(height: GetItSizes.spaceBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(GetItTexts.signIn),
            ),
          ),
          const SizedBox(height: GetItSizes.spaceBetweenItems),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignUpScreen()),
              child: const Text(GetItTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
