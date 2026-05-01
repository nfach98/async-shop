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
          child: Image.network(product?.thumbnail ?? '', fit: BoxFit.cover),
        ),
        Text(product?.title ?? '', maxLines: 2, style: TextStyle(fontSize: 12)),
        Text(
          product?.price?.toString() ?? '',
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
