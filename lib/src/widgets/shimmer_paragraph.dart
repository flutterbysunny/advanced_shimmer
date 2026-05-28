import 'package:flutter/material.dart';
import '../../advanced_shimmer.dart';

/// A multi-line shimmer text paragraph widget.
class ShimmerParagraph extends StatelessWidget {
  final int lines;
  final double spacing;

  const ShimmerParagraph({
    super.key,
    this.lines = 4,
    this.spacing = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        lines,
            (index) => Padding(
          padding: EdgeInsets.only(bottom: spacing),
          child: AdvancedShimmer(
            width: double.infinity,
            height: 14,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}