import 'package:flutter/material.dart';

/// Theme configuration for AdvancedShimmer.
class ShimmerTheme {
  /// Base shimmer color
  final Color baseColor;

  /// Highlight shimmer color
  final Color highlightColor;

  /// Border radius shortcut (easy API)
  final double borderRadius;

  /// Animation duration
  final Duration duration;

  /// Width of shimmer widget
  final double? width;

  /// Height of shimmer widget
  final double? height;

  /// Shape of shimmer
  final BoxShape shape;

  /// Optional custom gradient
  final Gradient? gradient;

  const ShimmerTheme({
    this.baseColor = const Color(0xFFE0E0E0),
    this.highlightColor = const Color(0xFFF5F5F5),
    this.borderRadius = 12,
    this.duration = const Duration(milliseconds: 1200),
    this.width,
    this.height,
    this.shape = BoxShape.rectangle,
    this.gradient,
  });
}