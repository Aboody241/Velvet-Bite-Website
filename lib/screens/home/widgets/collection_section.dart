import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';
import 'package:velvet_bite/data/models/product_model.dart';

class CollectionSection extends StatelessWidget {
  const CollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data based on the design
    final List<Product> products = [
      Product(
        id: 1,
        name: 'Belgian Waffles',
        description: 'Crispy golden waffles with premium Belgian chocolate',
        price: 45.0,
        category: 'Desserts',
        image: 'https://images.unsplash.com/photo-1549007994-cb92caebd54b?q=80&w=800&auto=format&fit=crop',
        featured: true,
      ),
      Product(
        id: 2,
        name: 'Chocolate Delights',
        description: 'Premium chocolate desserts handcrafted daily',
        price: 52.0,
        category: 'Desserts',
        image: 'https://images.unsplash.com/photo-1549007994-cb92caebd54b?q=80&w=800&auto=format&fit=crop',
        featured: true,
      ),
      Product(
        id: 3,
        name: 'Specialty Coffee',
        description: 'Artisan coffee blends from around the world',
        price: 28.0,
        category: 'Beverages',
        image: 'https://images.unsplash.com/photo-1610889556528-9a770e32642f?q=80&w=800&auto=format&fit=crop',
        featured: true,
      ),
      Product(
        id: 4,
        name: 'Fluffy Pancakes',
        description: 'Cloud-like pancakes with maple syrup and fresh berries',
        price: 38.0,
        category: 'Desserts',
        image: 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?q=80&w=800&auto=format&fit=crop',
        featured: true,
      ),
      Product(
        id: 5,
        name: 'Golden Zalabia',
        description: 'Traditional crispy sweet pastry with honey syrup',
        price: 35.0,
        category: 'Desserts',
        image: 'https://images.unsplash.com/photo-1549007994-cb92caebd54b?q=80&w=800&auto=format&fit=crop',
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
            'Our Collection',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Discover our carefully curated selection of premium desserts and beverages',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SizedBox(height: 24),
            itemBuilder: (context, index) {
              final product = products[index];
              return _ProductCard(product: product);
            },
          ),
        ],
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Product product;

  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              product.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTypography.heading4,
                ),
                const SizedBox(height: 8),
                Text(
                  product.description,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.secondaryText,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.price.toInt()} SAR',
                      style: AppTypography.bodyLarge.copyWith(
                        color: AppColors.primaryGold,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: AppColors.primaryGold,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
