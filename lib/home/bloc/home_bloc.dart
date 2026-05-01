import 'package:async_shop/home/bloc/home_event.dart';
import 'package:async_shop/home/bloc/home_state.dart';
import 'package:async_shop/home/models/product.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(products: [], isLoading: false)) {
    on<GetProducts>(_onGetProducts);
  }

  final dio = Dio(BaseOptions(baseUrl: 'http://184.174.33.2:3000'));

  void _onGetProducts(GetProducts event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final request = await dio.get('/api/products');
      final data = request.data as List<dynamic>;
      final products = data.map((json) => Product.fromJson(json)).toList();
      emit(state.copyWith(products: products, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
