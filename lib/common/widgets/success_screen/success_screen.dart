import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../utils/constants/text_strings.dart';
import '../../styles/spacing.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/devices/device_utility.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: GetItSpacing.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // Image
            Image(
              image: AssetImage(image),
              width: GetItDeviceUtils.getScreenWidth() * 0.6,
            ),

            const SizedBox(height: GetItSizes.spaceBetweenSections),

            // Title and Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenItems),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenSections),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const LoginScreen()),
                child: const Text(GetItTexts.getItContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
