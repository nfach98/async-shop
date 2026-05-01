import 'package:async_shop/home/models/product.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState({required this.products, required this.isLoading});

  final List<Product> products;
  final bool isLoading;

  HomeState copyWith({List<Product>? products, bool? isLoading}) {
    return HomeState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [products, isLoading];
}
