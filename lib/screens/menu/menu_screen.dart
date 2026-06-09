import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';
import 'package:velvet_bite/data/models/product_model.dart';
import 'package:velvet_bite/screens/order/order_contact_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Waffles',
    'Pancakes',
    'Cakes',
    'Hot Drinks',
    'Mojito',
  ];

  final List<Product> allItems = [
    Product(
      id: 1,
      name: 'Chocolate Heaven Waffle',
      description: 'Our signature Belgian waffle with triple chocolate and fresh strawberries.',
      price: 65.0,
      category: 'Waffles',
      image: 'https://images.unsplash.com/photo-1578985545062-69928b1ea96d?q=80&w=800&auto=format&fit=crop',
      featured: true,
    ),
    Product(
      id: 2,
      name: 'Raspberry Velvet Cake',
      description: 'Delicate sponge cake with fresh raspberries and cream.',
      price: 55.0,
      category: 'Cakes',
      image: 'https://images.unsplash.com/photo-1565958011703-44f9829ba187?q=80&w=800&auto=format&fit=crop',
      featured: true,
    ),
    Product(
      id: 3,
      name: 'Classic Golden Pancake',
      description: 'Fluffy pancakes served with pure maple syrup and butter.',
      price: 45.0,
      category: 'Pancakes',
      image: 'https://images.unsplash.com/photo-1528207776546-384cb1119b27?q=80&w=800&auto=format&fit=crop',
      featured: false,
    ),
    Product(
      id: 4,
      name: 'Pistachio Dream Waffle',
      description: 'Rich pistachio cream over a warm waffle topped with crushed nuts.',
      price: 70.0,
      category: 'Waffles',
      image: 'https://images.unsplash.com/photo-1558961363-fa8fdf82db35?q=80&w=800&auto=format&fit=crop',
      featured: false,
    ),
    Product(
      id: 5,
      name: 'Spanish Latte',
      description: 'Rich espresso mixed with sweet condensed milk and steamed milk.',
      price: 28.0,
      category: 'Hot Drinks',
      image: 'https://images.unsplash.com/photo-1589396575653-c09c794ff6a6?q=80&w=800&auto=format&fit=crop',
      featured: false,
    ),
    Product(
      id: 6,
      name: 'Strawberry Mojito',
      description: 'Refreshing blend of fresh strawberries, mint, lime, and soda.',
      price: 35.0,
      category: 'Mojito',
      image: 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?q=80&w=800&auto=format&fit=crop',
      featured: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Product> displayedItems = allItems;
    if (selectedCategory != 'All') {
      displayedItems = allItems.where((item) => item.category == selectedCategory).toList();
    }

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryBackground,
        iconTheme: const IconThemeData(color: AppColors.primaryGold),
        title: Text(
          'Our Menu',
          style: AppTypography.heading3.copyWith(color: AppColors.primaryGold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Category Bar
          Container(
            height: 70,
            color: AppColors.secondaryBackground,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = selectedCategory == category;
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedCategory = category;
                      });
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.primaryGold : AppColors.mutedBackground,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isSelected ? AppColors.primaryGold : AppColors.border,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        category,
                        style: AppTypography.buttonText.copyWith(
                          color: isSelected ? AppColors.primaryBackground : AppColors.primaryText,
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Products List
          Expanded(
            child: displayedItems.isEmpty 
              ? Center(
                  child: Text(
                    'No items available in this category yet.',
                    style: AppTypography.bodyMedium.copyWith(color: AppColors.secondaryText),
                  ),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(24.0),
                  itemCount: displayedItems.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 24),
                  itemBuilder: (context, index) {
                    final product = displayedItems[index];
                    return _MenuCard(product: product);
                  },
                ),
          ),
        ],
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final Product product;

  const _MenuCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Image.network(
            product.image,
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        product.name,
                        style: AppTypography.heading3.copyWith(
                          color: AppColors.primaryGold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '${product.price} SAR',
                      style: AppTypography.heading4.copyWith(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  product.description,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.secondaryText,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                // Order Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderContactScreen(product: product),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGold,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Order Now',
                      style: AppTypography.buttonText.copyWith(
                        color: AppColors.primaryBackground,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
