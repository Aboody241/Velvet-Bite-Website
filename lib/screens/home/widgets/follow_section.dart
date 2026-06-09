import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';

class FollowSection extends StatelessWidget {
  const FollowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
      color: AppColors.primaryBackground, // or secondaryBackground based on the exact shade, but primary seems right
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInstagramIcon(48, AppColors.primaryGold),
          const SizedBox(height: 24),
          Text(
            'Follow Our Journey',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Join our community and stay updated\nwith our latest creations, special offers,\nand sweet moments',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.6,
              color: AppColors.secondaryText,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          InkWell(
            onTap: () {
              // Handle follow action
            },
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.softGold, // The image shows a slightly softer/brighter gold for the button
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.softGold.withValues(alpha: 0.2),
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildInstagramIcon(20, AppColors.primaryBackground),
                  const SizedBox(width: 12),
                  Text(
                    'Follow @VelvetBite',
                    style: AppTypography.buttonText.copyWith(
                      color: AppColors.primaryBackground,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstagramIcon(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: color, width: size * 0.08),
        borderRadius: BorderRadius.circular(size * 0.25),
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: size * 0.45,
              height: size * 0.45,
              decoration: BoxDecoration(
                border: Border.all(color: color, width: size * 0.08),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: size * 0.12,
            right: size * 0.12,
            child: Container(
              width: size * 0.12,
              height: size * 0.12,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
