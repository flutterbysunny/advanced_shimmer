import 'package:flutter/material.dart';
import 'shimmer_avatar.dart';
import 'shimmer_text.dart';

/// A shimmer placeholder for ListTile loading.
class ShimmerListTile extends StatelessWidget {
  /// Creates a [ShimmerListTile].
  const ShimmerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ShimmerAvatar(size: 50),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerText(width: 150),
              SizedBox(height: 8),
              ShimmerText(width: 100),
            ],
          ),
        ),
      ],
    );
  }
}