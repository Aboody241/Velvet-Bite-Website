import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/screens/home/widgets/hero_section.dart';
import 'package:velvet_bite/screens/home/widgets/about_section.dart';
import 'package:velvet_bite/screens/home/widgets/collection_section.dart';
import 'package:velvet_bite/screens/home/widgets/signature_collection_section.dart';
import 'package:velvet_bite/screens/home/widgets/gallery_section.dart';
import 'package:velvet_bite/screens/home/widgets/reviews_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      // We extend the body behind the AppBar (if we add one later) so the hero image is truly full screen
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SignatureCollectionSection(),
            CollectionSection(),
            GallerySection(),
            ReviewsSection(),
            // Other sections will be added here
          ],
        ),
      ),
    );
  }
}
