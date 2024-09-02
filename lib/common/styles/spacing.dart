import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class GetItSpacing {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    bottom: GetItSizes.defaultSpace,
    left: GetItSizes.defaultSpace,
    right: GetItSizes.defaultSpace,
    top: GetItSizes.appBarHeight,
  );
}
