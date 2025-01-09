import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'T-shirt',
      price: 29.99, // Type is `double`
      imageUrl: 'https://example.com/tshirt.png', // Type is `String`
    ),
    Product(
      id: 'p2',
      title: 'Shoes',
      price: 59.99, // Type is `double`
      imageUrl: 'https://example.com/shoes.png', // Type is `String`
    ),
  ];

  // Getter to return a copy of _items
  List<Product> get products {
    return [..._items];
  }

  // Add method to allow for adding products to the list
  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
