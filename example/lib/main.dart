import 'package:advanced_shimmer/advanced_shimmer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Example app for Advanced Shimmer package.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advanced Shimmer Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Advanced Shimmer'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Basic Shimmer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              AdvancedShimmer(
                width: double.infinity,
                height: 80,
              ),

              SizedBox(height: 24),

              Text(
                'Shimmer Card',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              ShimmerCard(),

              SizedBox(height: 24),

              Text(
                'Shimmer Text',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              ShimmerText(width: 220),
              SizedBox(height: 8),
              ShimmerText(width: 180),

              SizedBox(height: 24),

              Text(
                'Shimmer Avatar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              ShimmerAvatar(size: 80),

              SizedBox(height: 24),

              Text(
                'Shimmer List Tile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              ShimmerListTile(),
              SizedBox(height: 12),
              ShimmerListTile(),
              SizedBox(height: 12),

              Text(
                'Button Shimmer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ShimmerButton(),
              SizedBox(height: 12),

              Text(
                'Paragraph Shimmer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ShimmerParagraph(),
            ],
          ),
        ),
      ),
    );
  }
}