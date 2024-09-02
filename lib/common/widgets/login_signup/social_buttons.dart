import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

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
              image: AssetImage(GetItTexts.google),
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
              image: AssetImage(GetItTexts.facebook),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
