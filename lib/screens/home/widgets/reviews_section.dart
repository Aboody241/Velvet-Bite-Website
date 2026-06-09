import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_colors.dart';
import 'package:velvet_bite/core/theme/app_typography.dart';

class Review {
  final String text;
  final String author;
  final int rating;

  Review({required this.text, required this.author, this.rating = 5});
}

class ReviewsSection extends StatefulWidget {
  const ReviewsSection({super.key});

  @override
  State<ReviewsSection> createState() => _ReviewsSectionState();
}

class _ReviewsSectionState extends State<ReviewsSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Review> reviews = [
    Review(
      text: '"Velvet Bite transformed my birthday celebration into an unforgettable experience. Simply divine!"',
      author: 'Omar Al-Rashid',
    ),
    Review(
      text: '"The best desserts in town! The chocolate heaven is an absolute masterpiece. Highly recommended!"',
      author: 'Sarah Jenkins',
    ),
    Review(
      text: '"Exquisite flavors and elegant presentation. Every bite is a journey to Paris. Will definitely visit again."',
      author: 'Nour El-Din',
    ),
    Review(
      text: '"A truly premium experience. The specialty coffee pairs perfectly with their signature waffles."',
      author: 'Ahmed Hassan',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      color: AppColors.primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Guest Reviews',
            style: AppTypography.heading2.copyWith(
              color: AppColors.primaryGold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'What our guests say about us',
            style: AppTypography.bodyMedium.copyWith(
              height: 1.5,
              color: AppColors.secondaryText,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          
          // Carousel
          SizedBox(
            height: 280,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return _ReviewCard(review: reviews[index]);
              },
            ),
          ),
          
          const SizedBox(height: 32),
          
          // Indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              reviews.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                width: _currentPage == index ? 24.0 : 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? AppColors.primaryGold
                      : AppColors.primaryGold.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final Review review;

  const _ReviewCard({required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              review.rating,
              (index) => const Icon(
                Icons.star,
                color: AppColors.primaryGold,
                size: 20,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: Center(
              child: Text(
                review.text,
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.primaryText,
                  height: 1.6,
                ),
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            review.author,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.primaryGold,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
