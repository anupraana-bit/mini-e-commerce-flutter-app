# MyShop – Mini E-Commerce Flutter App

**Student Name:** _Your Name_
**Student ID:** _Your ID_
**Course:** Mobile Application Development – Flutter

## Description

MyShop is a simple multi-screen shopping app built with Flutter. Users browse a
promotional carousel, scroll through product categories, view products in a
grid, and open a product-details page. All data is static/local – no backend,
login, payment or database.

## Features

- Home page with AppBar (logo, search icon, cart icon)
- Auto-playing banner carousel (3 promotional banners) using `carousel_slider`
- Horizontally scrolling category list (6 categories)
- "Popular Products" section with a **See All →** link
- Reusable `ProductCard` (Card + Container + Stack with sale/new badges and a
  favorite toggle, plus a **View Details** button)
- Category page with `GridView.builder`, filtered by the selected category
- Product details page: image, name, price, rating, category, description
- **Add to Cart** shows a `SnackBar`
- Bonus: favorite toggle, quantity selector

## Screenshots

| Home | Category | Product Details |
| ---- | -------- | --------------- |
| _add screenshot_ | _add screenshot_ | _add screenshot_ |

## Packages Used

| Package | Purpose |
| ------- | ------- |
| [`carousel_slider`](https://pub.dev/packages/carousel_slider) `^5.1.2` | Auto-playing, swipeable promotional banner carousel on the home page |

## Project Structure

```
lib/
├── main.dart
├── models/product.dart            (Product, Category, BannerItem)
├── data/product_data.dart         (categories, banners, 16 products)
├── screens/
│   ├── home_page.dart
│   ├── category_page.dart
│   └── product_details_page.dart
└── widgets/
    ├── product_card.dart
    ├── category_item.dart
    ├── banner_carousel.dart
    └── network_image_box.dart
```

## How to Run

```bash
# 1. Generate the platform folders (android/ios/web...) once
flutter create .

# 2. Install dependencies
flutter pub get

# 3. Run on an emulator / device
flutter run
```

> Images load from the internet (placeholder URLs), so the device/emulator
> needs an internet connection.
