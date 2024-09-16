import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class GetItHomeAppBar extends StatelessWidget {
  const GetItHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetItAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GetItTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: GetItColors.grey),
          ),
          Text(
            GetItTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: GetItColors.white),
          ),
        ],
      ),
      actions: [
        GetItCartCounterIcon(onPressed: () {}, iconColor: GetItColors.white),
      ],
    );
  }
}
