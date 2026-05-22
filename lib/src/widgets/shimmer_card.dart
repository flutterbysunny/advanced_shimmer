import 'package:flutter/material.dart';
import 'shimmer_widget.dart';

/// A ready-to-use shimmer card widget.
class ShimmerCard extends StatelessWidget {
  /// Card width.
  final double width;

  /// Card height.
  final double height;

  /// Creates a [ShimmerCard].
  const ShimmerCard({
    super.key,
    this.width = double.infinity,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedShimmer(
      width: width,
      height: height,
    );
  }
}