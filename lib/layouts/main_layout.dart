import 'package:flutter/material.dart';
import 'package:omar_alsaket/pages/cart/cart_page.dart';
import 'package:omar_alsaket/pages/categories/categories_page.dart';
import 'package:omar_alsaket/pages/favorites/favorites_page.dart';
import 'package:omar_alsaket/pages/home/home_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int tabIndex = 0;

  void switchTab(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        CategoriesPage(),
        FavoritesPage(),
        CartPage(),
      ][tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.amber),
        onTap: switchTab,
        currentIndex: tabIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
