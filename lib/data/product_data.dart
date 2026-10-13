import 'package:flutter/material.dart';

import '../models/product.dart';

// NOTE: Images use public placeholder URLs (picsum.photos, seeded so each
// product always gets the same picture). Replace them with real product
// images or local assets (assets/images/...) for a more realistic look.
String _img(String seed, {int w = 600, int h = 600}) =>
    'https://picsum.photos/seed/$seed/$w/$h';

const List<Category> categories = [
  Category(
    name: 'Electronics',
    image: 'https://picsum.photos/seed/cat-electronics/200/200',
    icon: Icons.devices,
  ),
  Category(
    name: 'Fashion',
    image: 'https://picsum.photos/seed/cat-fashion/200/200',
    icon: Icons.checkroom,
  ),
  Category(
    name: 'Shoes',
    image: 'https://picsum.photos/seed/cat-shoes/200/200',
    icon: Icons.directions_walk,
  ),
  Category(
    name: 'Beauty',
    image: 'https://picsum.photos/seed/cat-beauty/200/200',
    icon: Icons.brush,
  ),
  Category(
    name: 'Accessories',
    image: 'https://picsum.photos/seed/cat-accessories/200/200',
    icon: Icons.watch,
  ),
  Category(
    name: 'Home',
    image: 'https://picsum.photos/seed/cat-home/200/200',
    icon: Icons.chair,
  ),
];

final List<BannerItem> banners = [
  BannerItem(
    title: 'Summer Sale',
    subtitle: 'Up to 50% off on fashion',
    image: _img('banner-summer', w: 900, h: 400),
    targetCategory: 'Fashion',
  ),
  BannerItem(
    title: 'New Arrivals',
    subtitle: 'Fresh sneakers just landed',
    image: _img('banner-new', w: 900, h: 400),
    targetCategory: 'Shoes',
  ),
  BannerItem(
    title: 'Electronics Discount',
    subtitle: 'Best deals on gadgets',
    image: _img('banner-electronics', w: 900, h: 400),
    targetCategory: 'Electronics',
  ),
];

final List<Product> products = [
  // ---------------- Electronics ----------------
  Product(
    name: 'iPhone 15',
    category: 'Electronics',
    image: _img('iphone'),
    price: 99900,
    rating: 4.8,
    description:
        'Latest smartphone with a stunning display, powerful chip and an '
        'excellent dual-camera system.',
    isNew: true,
  ),
  Product(
    name: 'Laptop Pro 14',
    category: 'Electronics',
    image: _img('laptop'),
    price: 129900,
    rating: 4.6,
    description:
        'Lightweight 14-inch laptop with fast SSD storage, 16GB RAM and '
        'all-day battery life.',
    discountPercent: 10,
  ),
  Product(
    name: 'Wireless Headphones',
    category: 'Electronics',
    image: _img('headphones'),
    price: 3500,
    rating: 4.5,
    description: 'Wireless headphones with high-quality sound and noise '
        'cancellation.',
    discountPercent: 20,
  ),
  Product(
    name: 'Smart Watch',
    category: 'Electronics',
    image: _img('smartwatch'),
    price: 8999,
    rating: 4.3,
    description:
        'Track your steps, heart rate and sleep with this water-resistant '
        'smart watch.',
    isNew: true,
  ),

  // ---------------- Fashion ----------------
  Product(
    name: 'Classic T-Shirt',
    category: 'Fashion',
    image: _img('tshirt'),
    price: 999,
    rating: 4.2,
    description: 'Soft 100% cotton t-shirt, comfortable for everyday wear.',
    discountPercent: 50,
  ),
  Product(
    name: 'Denim Jacket',
    category: 'Fashion',
    image: _img('jacket'),
    price: 3499,
    rating: 4.4,
    description: 'Timeless denim jacket with a modern slim fit.',
  ),
  Product(
    name: 'Summer Dress',
    category: 'Fashion',
    image: _img('dress'),
    price: 2499,
    rating: 4.7,
    description: 'Light and breezy floral dress, perfect for sunny days.',
    isNew: true,
  ),

  // ---------------- Shoes ----------------
  Product(
    name: 'Running Sneakers',
    category: 'Shoes',
    image: _img('sneakers'),
    price: 4999,
    rating: 4.6,
    description: 'Cushioned running sneakers with breathable mesh upper.',
    discountPercent: 15,
  ),
  Product(
    name: 'Leather Loafers',
    category: 'Shoes',
    image: _img('loafers'),
    price: 5999,
    rating: 4.1,
    description: 'Premium leather loafers for formal and casual occasions.',
  ),
  Product(
    name: 'Canvas High-Tops',
    category: 'Shoes',
    image: _img('hightops'),
    price: 2999,
    rating: 4.3,
    description: 'Classic canvas high-tops with a durable rubber sole.',
    isNew: true,
  ),

  // ---------------- Beauty ----------------
  Product(
    name: 'Face Moisturizer',
    category: 'Beauty',
    image: _img('moisturizer'),
    price: 1299,
    rating: 4.5,
    description: 'Hydrating daily moisturizer suitable for all skin types.',
  ),
  Product(
    name: 'Matte Lipstick',
    category: 'Beauty',
    image: _img('lipstick'),
    price: 799,
    rating: 4.4,
    description: 'Long-lasting matte lipstick in a rich, bold shade.',
    discountPercent: 25,
  ),

  // ---------------- Accessories ----------------
  Product(
    name: 'Travel Backpack',
    category: 'Accessories',
    image: _img('backpack'),
    price: 2799,
    rating: 4.6,
    description: 'Spacious water-resistant backpack with a padded laptop '
        'compartment.',
    isNew: true,
  ),
  Product(
    name: 'Sunglasses',
    category: 'Accessories',
    image: _img('sunglasses'),
    price: 1599,
    rating: 4.2,
    description: 'UV-protected polarized sunglasses with a stylish frame.',
    discountPercent: 30,
  ),

  // ---------------- Home ----------------
  Product(
    name: 'Table Lamp',
    category: 'Home',
    image: _img('lamp'),
    price: 1899,
    rating: 4.3,
    description: 'Minimalist table lamp that adds warm light to any room.',
  ),
  Product(
    name: 'Ceramic Mug Set',
    category: 'Home',
    image: _img('mugs'),
    price: 1199,
    rating: 4.5,
    description: 'Set of four hand-finished ceramic mugs.',
    discountPercent: 10,
  ),
];

/// Helper used by the Category page to filter products.
List<Product> productsForCategory(String categoryName) =>
    products.where((p) => p.category == categoryName).toList();

/// Currency formatting helper (Nepali Rupees, matching the assignment sample).
String formatPrice(double price) => 'Rs. ${price.toStringAsFixed(0)}';
