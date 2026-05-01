import 'package:async_shop/home/bloc/home_bloc.dart';
import 'package:async_shop/home/bloc/home_event.dart';
import 'package:async_shop/home/bloc/home_state.dart';
import 'package:async_shop/home/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = HomeBloc();
        bloc.add(GetProducts());
        return bloc;
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final products = state.products;
          final isLoading = state.isLoading;

          if (isLoading) {
            return Scaffold(
              appBar: AppBar(title: Text('Home')),
              body: Center(child: CircularProgressIndicator()),
            );
          }

          return Scaffold(
            appBar: AppBar(title: Text('Home')),
            body: RefreshIndicator(
              onRefresh: () async {
                final bloc = context.read<HomeBloc>();
                bloc.add(GetProducts());
              },
              child: GridView.builder(
                padding: EdgeInsets.all(12),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
