import 'package:flutter/material.dart';

/// Defines shimmer animation direction.
enum ShimmerDirection {
  /// Left to right shimmer.
  leftToRight,

  /// Right to left shimmer.
  rightToLeft,

  /// Top to bottom shimmer.
  topToBottom,

  /// Bottom to top shimmer.
  bottomToTop,

  /// Diagonal shimmer.
  diagonal,
}

/// Extension to map direction into gradient alignments.
extension ShimmerDirectionExtension on ShimmerDirection {
  Alignment get begin {
    switch (this) {
      case ShimmerDirection.leftToRight:
        return Alignment.centerLeft;
      case ShimmerDirection.rightToLeft:
        return Alignment.centerRight;
      case ShimmerDirection.topToBottom:
        return Alignment.topCenter;
      case ShimmerDirection.bottomToTop:
        return Alignment.bottomCenter;
      case ShimmerDirection.diagonal:
        return Alignment.topLeft;
    }
  }

  Alignment get end {
    switch (this) {
      case ShimmerDirection.leftToRight:
        return Alignment.centerRight;
      case ShimmerDirection.rightToLeft:
        return Alignment.centerLeft;
      case ShimmerDirection.topToBottom:
        return Alignment.bottomCenter;
      case ShimmerDirection.bottomToTop:
        return Alignment.topCenter;
      case ShimmerDirection.diagonal:
        return Alignment.bottomRight;
    }
  }
}