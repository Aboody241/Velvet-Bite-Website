import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy images for the gallery
    final List<String> galleryImages = [
      'https://images.unsplash.com/photo-1578985545062-69928b1ea96d?q=80&w=800&auto=format&fit=crop', // Chocolate Cake
      'https://images.unsplash.com/photo-1565958011703-44f9829ba187?q=80&w=800&auto=format&fit=crop', // Colorful Cake Slice
      'https://images.unsplash.com/photo-1488477181946-6428a0291777?q=80&w=800&auto=format&fit=crop', // Dessert Jars
      'https://images.unsplash.com/photo-1551024601-bec78aea704b?q=80&w=800&auto=format&fit=crop', // Donuts
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      color: AppColors.primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Gallery',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'A glimpse into our world of sweetness',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: galleryImages.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  galleryImages[index],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
