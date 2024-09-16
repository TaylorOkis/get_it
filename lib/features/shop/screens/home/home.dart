import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';

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
                        GetItSectionHeading(title: 'Popular Categories')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
