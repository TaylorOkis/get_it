import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class GetItVerticalImageText extends StatelessWidget {
  const GetItVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = GetItColors.white,
    this.backgroundColor = GetItColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = GetItHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(GetItSizes.spaceBetweenItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(GetItSizes.small),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? GetItColors.light : GetItColors.dark),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? GetItColors.light : GetItColors.dark,
                ),
              ),
            ),
            const SizedBox(height: GetItSizes.small),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
