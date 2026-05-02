import 'package:omar_alsaket/data/product_data.dart';

class ProductRepository {
  List<ProductData> getProducts() {
    // add 15 prodect as mock data and make 7 of them as favorite
    return [
      ProductData(title: "Blue Car", price: 299, isFavorite: true, isInCart: true),
      ProductData(title: "Red Car", price: 399, isInCart: true),
      ProductData(title: "Green Car", price: 199, isFavorite: true, isInCart: true),
      ProductData(title: "Yellow Car", price: 499, isInCart: true),
      ProductData(title: "Black Car", price: 599, isInCart: true),
      ProductData(title: "White Car", price: 699, isInCart: true),
      ProductData(title: "Silver Car", price: 799),
      ProductData(title: "Gold Car", price: 899, isFavorite: true),
      ProductData(title: "Purple Car", price: 999),
      ProductData(title: "Orange Car", price: 1099, isFavorite: true),
      ProductData(title: "Pink Car", price: 1199, isFavorite: true),
      ProductData(title: "Brown Car", price: 1299),
      ProductData(title: "Gray Car", price: 1399, isFavorite: true),
      ProductData(title: "Cyan Car", price: 1499, isFavorite: true),
      ProductData(title: "Magenta Car", price: 1599),
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
