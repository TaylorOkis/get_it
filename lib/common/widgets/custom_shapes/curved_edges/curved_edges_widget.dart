import 'package:flutter/material.dart';

import 'curved_edges.dart';

class GetItCurvedEdgeWidget extends StatelessWidget {
  const GetItCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GetItCustomCurvedEdges(),
      child: child,
    );
  }
}
