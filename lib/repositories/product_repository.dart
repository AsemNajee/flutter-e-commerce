import 'package:omar_alsaket/data/product_data.dart';

class ProductRepository {
  List<ProductData> getProducts() {
    // add 15 prodect as mock data and make 7 of them as favorite
    return [
      ProductData(title: "Blue Car", price: 299, isFavorite: true, isInCart: true, category: 'Cars'),
      ProductData(title: "Red Car", price: 399, isInCart: true, category: 'Cars'),
      ProductData(title: "Green Car", price: 199, isFavorite: true, isInCart: true, category: 'Cars'),
      ProductData(title: "Yellow Car", price: 499, isInCart: true, category: 'Cars'),
      ProductData(title: "Black Car", price: 599, isInCart: true, category: 'Cars'),
      ProductData(title: "White Car", price: 699, isInCart: true, category: 'Cars'),
      ProductData(title: "Silver Car", price: 799, category: 'Cars'),
      ProductData(title: "Gold Car", price: 899, isFavorite: true, category: 'Cars'),
      ProductData(title: "Purple Car", price: 999, category: 'Cars'),
      ProductData(title: "Orange Car", price: 1099, isFavorite: true, category: 'Cars'),
      ProductData(title: "Pink Car", price: 1199, isFavorite: true, category: 'Cars'),
      ProductData(title: "Brown Car", price: 1299, category: 'Cars'),
      ProductData(title: "Gray Car", price: 1399, isFavorite: true, category: 'Cars'),
      ProductData(title: "Cyan Car", price: 1499, isFavorite: true, category: 'Cars'),
      ProductData(title: "Magenta Car", price: 1599, category: 'Cars'),
    ];
  }

  List<ProductData> getFavorites() {
    return getProducts().where((product) => product.isFavorite).toList();
  }

  List<ProductData> getDiscountedProducts() {
    return getProducts().where((product) => product.discount > 0).toList();
  }

  List<ProductData> getProductsInCart() {
    // for simplicity, we will return the first 5 products as products in cart
    return getProducts().take(5).toList();
  }
}
