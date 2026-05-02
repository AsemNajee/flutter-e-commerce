import 'package:flutter/material.dart';
import 'package:omar_alsaket/pages/home/widgets/product_list.dart';
import 'package:omar_alsaket/repositories/product_repository.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ProductRepository productRepository = ProductRepository();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductList(
          products: productRepository.getProducts(),
          title: "Today's Deals",
          description: "Fresh picks corrsted for today only",
          id: "1",
        ),
        ProductList(
          products: productRepository.getProducts(),
          title: "Trending Now",
          description: "Most loved products this week",
          id: "1",
        ),
      ],
    );
  }
}