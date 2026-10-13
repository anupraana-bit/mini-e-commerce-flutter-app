import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

/// Shows all products of the selected category in a grid.
/// Pass categoryName: 'All' to list every product (used by "See All").
class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final List<Product> filtered =
        categoryName == 'All' ? products : productsForCategory(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName == 'All' ? 'All Products' : categoryName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: filtered.isEmpty
          ? const Center(child: Text('No products found in this category.'))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: filtered.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.66,
              ),
              itemBuilder: (context, index) =>
                  ProductCard(product: filtered[index]),
            ),
    );
  }
}
