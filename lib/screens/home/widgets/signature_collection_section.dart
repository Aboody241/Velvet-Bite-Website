import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';
import 'package:velvet_bite/data/models/product_model.dart';

class SignatureCollectionSection extends StatelessWidget {
  const SignatureCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for signature items
    final List<Product> signatureProducts = [
      Product(
        id: 101,
        name: 'Chocolate Heaven',
        description: 'Our signature Belgian waffle with triple chocolate',
        price: 65.0,
        category: 'Signature',
        image: 'https://images.unsplash.com/photo-1578985545062-69928b1ea96d?q=80&w=800&auto=format&fit=crop',
        featured: true,
      ),
      Product(
        id: 102,
        name: 'Raspberry Velvet',
        description: 'Delicate sponge cake with fresh raspberries and cream',
        price: 55.0,
        category: 'Signature',
        image: 'https://images.unsplash.com/photo-1565958011703-44f9829ba187?q=80&w=800&auto=format&fit=crop',
        featured: true,
      ),
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      color: AppColors.primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Signature Collection',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Our most celebrated creations',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: signatureProducts.length,
            separatorBuilder: (context, index) => const SizedBox(height: 32),
            itemBuilder: (context, index) {
              final product = signatureProducts[index];
              return _SignatureCard(product: product);
            },
          ),
        ],
      ),
    );
  }
}

class _SignatureCard extends StatelessWidget {
  final Product product;

  const _SignatureCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage(product.image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Gradient overlay for text readability
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.5, 1.0],
                ),
              ),
            ),
          ),
          // Content
          Positioned(
            left: 24,
            right: 24,
            bottom: 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTypography.heading3.copyWith(
                    color: AppColors.primaryText,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  product.description,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.primaryText.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
