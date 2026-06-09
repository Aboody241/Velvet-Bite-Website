import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
      color: AppColors.primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Crafting Sweet\nMemories',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'At Velvet Bite, we believe that every dessert tells a story. Inspired by the elegant patisseries of Paris and the refined cafés of Milan, we bring you an experience that transcends taste.',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Our master chefs handcraft each creation using only the finest ingredients sourced from around the world. From Belgian chocolate to Madagascar vanilla, every element is chosen with care and passion.',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "We don't just serve desserts. We create moments of pure joy, celebrations of life's sweetest occasions, and memories that linger long after the last bite.",
            style: AppTypography.bodyMedium.copyWith(
              height: 1.6,
            ),
          ),
          const SizedBox(height: 48),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://images.unsplash.com/photo-1550617931-e17a7b70dce2?q=80&w=800&auto=format&fit=crop',
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
