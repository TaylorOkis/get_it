import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/features/shop/screens/home/home.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.green),
  ];
}
