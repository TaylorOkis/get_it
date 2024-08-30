import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controller/onboarding_controller/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: GetItImages.onBoardingImage1,
                title: GetItTexts.onBoardingTitle1,
                subTitle: GetItTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: GetItImages.onBoardingImage2,
                title: GetItTexts.onBoardingTitle2,
                subTitle: GetItTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: GetItImages.onBoardingImage3,
                title: GetItTexts.onBoardingTitle3,
                subTitle: GetItTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
