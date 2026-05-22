import 'package:flutter/material.dart';
import 'shimmer_widget.dart';

/// A circular shimmer avatar widget.
class ShimmerAvatar extends StatelessWidget {
  /// Avatar size.
  final double size;

  /// Creates a [ShimmerAvatar].
  const ShimmerAvatar({
    super.key,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedShimmer(
      width: size,
      height: size,
      shape: BoxShape.circle,
    );
  }
}