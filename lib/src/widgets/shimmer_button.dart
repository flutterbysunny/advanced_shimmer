import 'package:flutter/material.dart';
import '../../advanced_shimmer.dart';

/// A ready-made shimmer button widget.
class ShimmerButton extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const ShimmerButton({
    super.key,
    this.width = 140,
    this.height = 50,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(12),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedShimmer(
      width: width,
      height: height,
      borderRadius: borderRadius,
    );
  }
}