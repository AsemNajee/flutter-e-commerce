import 'package:flutter/material.dart';
import 'package:omar_alsaket/data/category_data.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryData});
  final CategoryData categoryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF272B30),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Icon(Icons.category, size: 40, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            categoryData.title,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}