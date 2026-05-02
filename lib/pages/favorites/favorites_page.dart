import 'package:flutter/material.dart';
import 'package:omar_alsaket/pages/home/widgets/product_card.dart';
import 'package:omar_alsaket/repositories/product_repository.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final ProductRepository productRepository = ProductRepository();

  @override
  Widget build(BuildContext context) {
    final favorites = productRepository.getFavorites();
    return Container(
      padding: EdgeInsets.all(8.0),
      child: favorites.isEmpty
          ? emptyFavorite()
          : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Favorites",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "Your favorite products are here.",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(8),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: favorites.length,
                    itemBuilder: (ctx, index) {
                      return ProductCard(product: favorites[index]);
                    },
                  ),
                ),
              ],
            ),
    );
  }

  Column emptyFavorite() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.favorite, size: 100, color: Colors.red),
        SizedBox(height: 20),
        Text(
          "Your Favorites",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "You haven't added any products to your favorites yet.",
          style: TextStyle(fontSize: 16, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
