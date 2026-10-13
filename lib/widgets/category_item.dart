import 'package:flutter/material.dart';

import '../models/product.dart';
import '../screens/category_page.dart';

/// One circular category entry for the horizontal category list.
class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(categoryName: category.name),
          ),
        );
      },
      child: SizedBox(
        width: 76,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: primary.withValues(alpha: 0.4)),
              ),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: primary.withValues(alpha: 0.1),
                backgroundImage: NetworkImage(category.image),
                // Ignore image load errors; the icon on top still identifies
                // the category even if the picture is missing.
                onBackgroundImageError: (_, __) {},
                child: Icon(
                  category.icon,
                  color: Colors.white,
                  shadows: const [Shadow(blurRadius: 6, color: Colors.black54)],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              category.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
