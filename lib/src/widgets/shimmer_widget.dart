import 'package:flutter/material.dart';
import '../../advanced_shimmer.dart';

class AdvancedShimmer extends StatefulWidget {
  final double width;
  final double height;
  final Color baseColor;
  final Color highlightColor;
  final BoxShape shape;
  final BorderRadius? borderRadius;
  final Duration duration;
  final ShimmerType type;

  const AdvancedShimmer({
    super.key,
    required this.width,
    required this.height,
    this.baseColor = const Color(0xFFE0E0E0),
    this.highlightColor = const Color(0xFFF5F5F5),
    this.shape = BoxShape.rectangle,
    this.borderRadius,
    this.duration = const Duration(seconds: 2),
    this.type = ShimmerType.linear,
  });

  @override
  State<AdvancedShimmer> createState() => _AdvancedShimmerState();
}

class _AdvancedShimmerState extends State<AdvancedShimmer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Gradient _buildGradient() {
    switch (widget.type) {
      case ShimmerType.linear:
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            widget.baseColor,
            widget.highlightColor,
            widget.baseColor,
          ],
          stops: const [0.25, 0.5, 0.75],
          transform: _SlidingGradientTransform(_controller.value),
        );

      case ShimmerType.wave:
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            widget.baseColor,
            widget.highlightColor,
            widget.baseColor,
          ],
          stops: const [0.25, 0.5, 0.75],
          transform: _SlidingGradientTransform(_controller.value),
        );

      case ShimmerType.diagonal:
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            widget.baseColor,
            widget.highlightColor,
            widget.baseColor,
          ],
          stops: const [0.25, 0.5, 0.75],
          transform: _SlidingGradientTransform(_controller.value),
        );

      case ShimmerType.glow:
        return RadialGradient(
          colors: [
            widget.highlightColor,
            widget.baseColor,
          ],
          stops: [0.2, 1.0],
          transform: _SlidingGradientTransform(_controller.value),
        );

      case ShimmerType.borderGlow:
        return LinearGradient(
          colors: [
            widget.highlightColor,
            widget.baseColor,
            widget.highlightColor,
          ],
          stops: const [0.25, 0.5, 0.75],
          transform: _SlidingGradientTransform(_controller.value),
        );

      case ShimmerType.pulse:
        final opacity = 0.5 + (_controller.value * 0.5);

        return LinearGradient(
          colors: [
            widget.baseColor.withValues(alpha: opacity),
            widget.highlightColor.withValues(alpha: opacity),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            shape: widget.shape,
            color: widget.baseColor,
            borderRadius: widget.shape == BoxShape.rectangle
                ? (widget.borderRadius ?? BorderRadius.circular(8))
                : null,
            gradient: _buildGradient(),
            border: widget.type == ShimmerType.borderGlow
                ? Border.all(
              color: widget.highlightColor,
              width: 2,
            )
                : null,
          ),
        );
      },
    );
  }
}

class _SlidingGradientTransform extends GradientTransform {
  final double slidePercent;

  const _SlidingGradientTransform(this.slidePercent);

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(
      bounds.width * (slidePercent * 2 - 1),
      0.0,
      0.0,
    );
  }
}