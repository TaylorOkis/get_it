import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';

class GetItHomeCategories extends StatelessWidget {
  const GetItHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GetItVerticalImageText(
            onTap: () {},
            image: '',
            title: 'Shoes',
          );
        },
      ),
    );
  }
}
