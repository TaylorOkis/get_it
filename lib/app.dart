import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/features/authentication/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';

class GetItApp extends StatelessWidget {
  const GetItApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: GetItAppTheme.lightTheme,
      darkTheme: GetItAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
