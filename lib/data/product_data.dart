class ProductData {
  final String title;
  final double price;
  final String imagePath;
  final double discount;
  final bool isFavorite;
  final bool isInCart;
  final String category;

  ProductData({
    required this.title,
    required this.price,
    required this.category,
    this.imagePath = "assets/image.png",
    this.discount = 0,
    this.isFavorite = false,
    this.isInCart = false,
  });
}
