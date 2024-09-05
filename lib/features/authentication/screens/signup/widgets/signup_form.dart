import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

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
          const SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: null,
              child: Text(GetItTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

class GetItTermsAndConditions extends StatelessWidget {
  const GetItTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GetItHelperFunctions.isDarkMode(context);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: '${GetItTexts.iAgreeto} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${GetItTexts.privacyPolicy} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? GetItColors.white : GetItColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? GetItColors.white : GetItColors.primary,
                ),
          ),
          TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${GetItTexts.termsofuse} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? GetItColors.white : GetItColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? GetItColors.white : GetItColors.primary,
                ),
          ),
        ],
      ),
    );
  }
}
