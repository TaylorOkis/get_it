import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/verify_email_screen/verify_email.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../login/login.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(GetItSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              GetItTexts.forgotPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenItems),
            Text(
              GetItTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenSections * 2),

            // Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: GetItTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: GetItSizes.spaceBetweenSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                  () => VerifyEmailScreen(
                    onPressed: () => Get.to(const LoginScreen()),
                  ),
                ),
                child: const Text(GetItTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
