import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    // The text color seen in the design
    const Color linkColor = AppColors.secondaryText;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24.0, 64.0, 24.0, 32.0),
      color: AppColors.primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'VELVET BITE',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
              fontSize: 28,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Sweet Moments Start Here ✨',
            style: AppTypography.bodyMedium.copyWith(
              color: linkColor,
            ),
          ),
          const SizedBox(height: 48),
          
          _buildSectionTitle('Quick Links'),
          const SizedBox(height: 20),
          _buildLink('Menu', linkColor),
          _buildLink('About Us', linkColor),
          _buildLink('Gallery', linkColor),
          const SizedBox(height: 40),
          
          _buildSectionTitle('Contact'),
          const SizedBox(height: 20),
          _buildText('+966 11 234 5678', linkColor),
          _buildText('info@velvetbite.com', linkColor),
          _buildText('Riyadh, Saudi Arabia', linkColor),
          const SizedBox(height: 40),
          
          _buildSectionTitle('Follow Us'),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildInstagramButton(),
              const SizedBox(width: 16),
              _buildSocialButton(Icons.facebook),
              const SizedBox(width: 16),
              _buildSocialButton(Icons.phone_outlined),
            ],
          ),
          
          const SizedBox(height: 48),
          Divider(color: AppColors.border, thickness: 1),
          const SizedBox(height: 24),
          
          Center(
            child: Text(
              '© 2026 Velvet Bite. All rights reserved. Crafted with\nlove and passion.',
              style: AppTypography.bodySmall.copyWith(
                color: linkColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppTypography.heading4.copyWith(
        color: AppColors.primaryText,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildLink(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: AppTypography.bodyMedium.copyWith(
          color: color,
        ),
      ),
    );
  }

  Widget _buildText(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: AppTypography.bodyMedium.copyWith(
          color: color,
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon) {
    return Container(
      width: 48,
      height: 48,
      decoration: const BoxDecoration(
        color: AppColors.mutedBackground,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: AppColors.primaryGold,
        size: 22,
      ),
    );
  }

  Widget _buildInstagramButton() {
    return Container(
      width: 48,
      height: 48,
      decoration: const BoxDecoration(
        color: AppColors.mutedBackground,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: _buildInstagramIcon(22, AppColors.primaryGold),
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
