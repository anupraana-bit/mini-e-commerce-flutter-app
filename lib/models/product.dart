import 'package:flutter/widgets.dart' show IconData;

class Product {
  final String name;
  final String category;
  final String image;
  final double price;
  final double rating;
  final String description;

  /// Discount percentage (0 = no discount). Drives the sale badge.
  final int discountPercent;

  /// Shows a "New" badge when true.
  final bool isNew;

  const Product({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    this.discountPercent = 0,
    this.isNew = false,
  });
}

class Category {
  final String name;
  final String image;
  final IconData icon;

  const Category({
    required this.name,
    required this.image,
    required this.icon,
  });
}

class BannerItem {
  final String title;
  final String subtitle;
  final String image;

  /// Category opened when the banner is tapped.
  final String targetCategory;

  const BannerItem({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.targetCategory,
  });
}
