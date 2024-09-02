import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class GetItDivider extends StatelessWidget {
  const GetItDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = GetItHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? GetItColors.darkGrey : GetItColors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? GetItColors.darkGrey : GetItColors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
