import 'package:flutter/material.dart';
import 'package:omar_alsaket/data/category_data.dart';

class CategoryRepository {
    List<CategoryData> getCategories() {
      return [
        CategoryData(title: "All", icon: Icon(Icons.all_inclusive)),
        CategoryData(title: "Cars", icon: Icon(Icons.directions_car)),
        CategoryData(title: "Bikes", icon: Icon(Icons.directions_bike)),
        CategoryData(title: "Boats", icon: Icon(Icons.directions_boat)),
        CategoryData(title: "Bus", icon: Icon(Icons.directions_bus)),
        CategoryData(title: "Train", icon: Icon(Icons.directions_railway)),
      ];
    }
}