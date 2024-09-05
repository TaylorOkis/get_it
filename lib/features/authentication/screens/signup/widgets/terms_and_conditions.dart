import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class GetItTermsAndConditions extends StatelessWidget {
  const GetItTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GetItHelperFunctions.isDarkMode(context);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: '${GetItTexts.iAgreeto} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${GetItTexts.privacyPolicy} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? GetItColors.white : GetItColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? GetItColors.white : GetItColors.primary,
                ),
          ),
          TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${GetItTexts.termsofuse} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? GetItColors.white : GetItColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? GetItColors.white : GetItColors.primary,
                ),
          ),
        ],
      ),
    );
  }
}
