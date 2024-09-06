import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/features/authentication/screens/signup/verify_email.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_and_conditions.dart';

class GetItSignUpForm extends StatelessWidget {
  const GetItSignUpForm({
    super.key,
  });

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
                    labelText: GetItTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: GetItSizes.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: GetItTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: GetItSizes.spaceBetweenInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: GetItTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: GetItSizes.spaceBetweenInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: GetItTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: GetItSizes.spaceBetweenInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: GetItTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: GetItSizes.spaceBetweenInputFields),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: GetItTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: GetItSizes.spaceBetweenSections),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(width: GetItSizes.spaceBetweenItems),
              const GetItTermsAndConditions(),
            ],
          ),
          const SizedBox(height: GetItSizes.spaceBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(GetItTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
