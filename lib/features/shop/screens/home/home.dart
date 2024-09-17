import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetItPrimaryHeaderContainer(
              child: Column(
                children: [
                  GetItHomeAppBar(),
                  SizedBox(height: GetItSizes.spaceBetweenSections),
                  GetItSearchContainer(text: 'Search in Store'),
                  SizedBox(height: GetItSizes.spaceBetweenSections),
                  Padding(
                    padding: EdgeInsets.only(left: GetItSizes.defaultSpace),
                    child: Column(
                      children: [
                        GetItSectionHeading(
                          title: 'Popular Categories',
                          textColor: GetItColors.white,
                        ),
                        SizedBox(height: GetItSizes.spaceBetweenItems),
                        GetItHomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInset.all(GetItSizes.defaultSpace),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(GetItSizes.medium)),
                    child: const Image(image: AssetImage(GetItImages.promo))))
          ],
        ),
      ),
    );
  }
}
