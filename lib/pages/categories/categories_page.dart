import 'package:flutter/material.dart';
import 'package:omar_alsaket/pages/categories/widgets/category_card.dart';
import 'package:omar_alsaket/repositories/category_repository.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  final CategoryRepository categoryRepository = CategoryRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "categories",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: categoryRepository.getCategories().length,
            itemBuilder: (ctx, index) {
              return CategoryCard(
                categoryData: categoryRepository.getCategories()[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
