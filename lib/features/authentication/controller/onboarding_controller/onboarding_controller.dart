import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentpageIndex = 0.obs;

  void updatePageIndicator(index) => currentpageIndex.value = index;

  void dotNavigationClick(index) {
    currentpageIndex.value = index;
    pageController.jumpTo(index);
  }

  void skipPage() {
    currentpageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  void nextPage() {
    if (currentpageIndex.value == 2) {
      // Go to LoginScreen()
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentpageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}
