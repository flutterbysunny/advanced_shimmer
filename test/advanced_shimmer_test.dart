import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advanced_shimmer/advanced_shimmer.dart';

void main() {
  test('ShimmerType enum exists', () {
    expect(ShimmerType.linear, isNotNull);
    expect(ShimmerType.wave, isNotNull);
    expect(ShimmerType.pulse, isNotNull);
    expect(ShimmerType.glow, isNotNull);
    expect(ShimmerType.diagonal, isNotNull);
    expect(ShimmerType.borderGlow, isNotNull);
  });

  test('ShimmerDirection enum exists', () {
    expect(ShimmerDirection.leftToRight, isNotNull);
    expect(ShimmerDirection.rightToLeft, isNotNull);
    expect(ShimmerDirection.topToBottom, isNotNull);
    expect(ShimmerDirection.bottomToTop, isNotNull);
    expect(ShimmerDirection.diagonal, isNotNull);
  });

  test('ShimmerTheme default values', () {
    const theme = ShimmerTheme();

    expect(theme.borderRadius, 12);
    expect(theme.shape, BoxShape.rectangle);
    expect(theme.duration, const Duration(milliseconds: 1200));
  });
}