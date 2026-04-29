import 'package:async_shop/home/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: GridView.builder(
          padding: EdgeInsets.all(12),
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) {
            return ProductCard();
          },
        ),
      ),
    );
  }
}
