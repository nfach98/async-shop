import 'package:async_shop/home/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.network(
            'https://placehold.co/600x400.png?text=Product',
            fit: BoxFit.cover,
          ),
        ),
        Text('Title', maxLines: 2, style: TextStyle(fontSize: 12)),
        Text(
          '\$99',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
