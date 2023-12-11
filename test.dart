void main() {
  List<Map<String, dynamic>> product = [
     {"name": "Banana" , "color":"yellow" , "price" : 3.5},
    {"name": "Strawberry" , "Color":"red" , "price" : 5.2},
    {"name": "guava" , "Color":"green" , "price" : 4.0},
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(product);

  applyPriceDiscount(product, 10);

  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(product);
}

void displayFruitDetails(List<Map<String, dynamic>> product) {
  for (var product in product) {
    print(
        "Name: ${product['name']}, Color: ${product['color']}, Price: \$${product['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> product, double discountPercentage) {
  for (var product in product) {
    double originalPrice = product['price'];
    double discountAmount = (originalPrice * discountPercentage) / 100;
    product['price'] = (originalPrice - discountAmount).toStringAsFixed(1);
  }
}