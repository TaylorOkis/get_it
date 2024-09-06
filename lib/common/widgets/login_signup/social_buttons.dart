import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class GetItSocialButtons extends StatelessWidget {
  const GetItSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: GetItColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const IconButton(
            onPressed: null,
            icon: Image(
              width: GetItSizes.iconMedium,
              height: GetItSizes.iconMedium,
              image: AssetImage(GetItImages.google),
            ),
          ),
        ),
        const SizedBox(width: GetItSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: GetItColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const IconButton(
            onPressed: null,
            icon: Image(
              width: GetItSizes.iconMedium,
              height: GetItSizes.iconMedium,
              image: AssetImage(GetItImages.facebook),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
