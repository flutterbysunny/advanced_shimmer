import 'package:flutter/material.dart';
import 'shimmer_widget.dart';

/// A shimmer placeholder for text loading.
class ShimmerText extends StatelessWidget {
  /// Width of text shimmer.
  final double width;

  /// Height of text shimmer.
  final double height;

  /// Creates a [ShimmerText].
  const ShimmerText({
    super.key,
    required this.width,
    this.height = 16,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedShimmer(
      width: width,
      height: height,
    );
  }
}