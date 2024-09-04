import 'package:flutter/material.dart';
import 'package:get_it/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GetItHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GetItSizes.defaultSpace),
          child: Column(
            children: [
              Text(GetItTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              Form(
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
                        const SizedBox(
                            width: GetItSizes.spaceBetweenInputFields),
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
                    const SizedBox(width: GetItSizes.spaceBetweenInputFields),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: GetItTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(width: GetItSizes.spaceBetweenInputFields),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: GetItTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(width: GetItSizes.spaceBetweenInputFields),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: GetItTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(width: GetItSizes.spaceBetweenInputFields),
                    TextFormField(
                      expands: false,
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
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: GetItTexts.iAgreeto,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: '${GetItTexts.privacyPolicy} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? GetItColors.white
                                          : GetItColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? GetItColors.white
                                          : GetItColors.primary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
