import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/product.dart'; // Ensure you import the Product model

class ProductItem extends StatelessWidget {
  final Product product; // Expect a Product object

  ProductItem({
    required this.product, // Initialize with Product
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return GridTile(
      child: Image.network(product.imageUrl, fit: BoxFit.cover),
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        title: Text(product.title, textAlign: TextAlign.center),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            cart.addItem(product); // Pass the entire Product object
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Added ${product.title} to cart!'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
