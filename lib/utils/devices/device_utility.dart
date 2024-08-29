import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GetItDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}

Future<void> setStatusBarColor(Color color) async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: color),
  );
}

bool isLandscapeOrientation(BuildContext context) {
  final viewInsets = View.of(context).viewInsets;
  return viewInsets.bottom == 0;
}

bool isPortraitOrientation(BuildContext context) {
  final viewInsets = View.of(context).viewInsets;
  return viewInsets.bottom != 0;
}

void setFullScreen(bool enable) {
  SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
}

Size getScreenSize() {
  return MediaQuery.of(Get.context!).size;
}

double getScreenHeight() {
  return MediaQuery.of(Get.context!).size.height;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPixelRatio() {
  return MediaQuery.of(Get.context!).devicePixelRatio;
}

double getStatusBarHeight() {
  return MediaQuery.of(Get.context!).padding.top;
}

double getBottomNavigationBarHeight() {
  return kBottomNavigationBarHeight;
}

double getAppBarHeight() {
  return kToolbarHeight;
}

double getKeyboardHeight() {
  final viewInsets = MediaQuery.of(Get.context!).viewInsets;
  return viewInsets.bottom;
}

Future<bool> isKeyboardVisible() async {
  final viewInsets = View.of(Get.context!).viewInsets;
  return viewInsets.bottom > 0;
}

Future<bool> isPhysicalDevice() async {
  return defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;
}

void vibrate(Duration duration) {
  HapticFeedback.vibrate();
  Future.delayed(duration, () => HapticFeedback.vibrate());
}

Future<void> setPrefferedOrientation(
    List<DeviceOrientation> orientations) async {
  await SystemChrome.setPreferredOrientations(orientations);
}

void hideStatusBar() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void showStatusBar() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
}

Future<bool> hasInternetConnection() async {
  try {
    final result = await InternetAddress.lookup('example.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}

bool isIOS() {
  return Platform.isIOS;
}

bool isAndroid() {
  return Platform.isAndroid;
}

void launchUrl(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
