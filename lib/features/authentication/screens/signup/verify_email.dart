import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/devices/device_utility.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(GetItSizes.defaultSpace),
        child: Column(
          children: [
            //Image
            Image(
              image: const AssetImage(GetItImages.confirmEmailImage),
              width: GetItDeviceUtils.getScreenWidth() * 0.6,
            ),

            const SizedBox(height: GetItSizes.spaceBetweenSections),

            ////Title & SubTitle
            Text(
              GetItTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenItems),
            Text(
              'email@domain.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenItems),
            Text(
              GetItTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GetItSizes.spaceBetweenSections),

            /////Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: GetItImages.successImage,
                    title: GetItTexts.yourAccountCreatedTitle,
                    subtitle: GetItTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  ),
                ),
                child: const Text(GetItTexts.getItContinue),
              ),
            ),
            const SizedBox(height: GetItSizes.spaceBetweenItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(GetItTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
