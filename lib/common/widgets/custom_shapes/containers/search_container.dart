import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class GetItSearchContainer extends StatelessWidget {
  const GetItSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = GetItHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GetItSizes.defaultSpace),
      child: Container(
        width: GetItDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(GetItSizes.medium),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? GetItColors.dark
                  : GetItColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(GetItSizes.cardRadiusLarge),
          border: showBorder ? Border.all(color: GetItColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: GetItColors.darkerGrey),
            const SizedBox(width: GetItSizes.spaceBetweenItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
