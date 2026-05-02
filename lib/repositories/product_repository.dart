import 'package:omar_alsaket/data/product_data.dart';

class ProductRepository {

  List<ProductData> getProducts() {
    return [
      ProductData(
        title: "Product 1",
        price: 29.99,
        imageUrl: "https://via.placeholder.com/150",
        discount: 0.2,
        isFavorite: false,
      ),
      ProductData(
        title: "Product 2",
        price: 49.99,
        imageUrl: "https://via.placeholder.com/150",
        discount: 0.1,
        isFavorite: true,
      ),
      ProductData(
        title: "Product 3",
        price: 19.99,
        imageUrl: "https://via.placeholder.com/150",
        discount: 0.3,
        isFavorite: false,
      ),
    ];
  }

    
}