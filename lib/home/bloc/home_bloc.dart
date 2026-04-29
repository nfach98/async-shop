import 'package:async_shop/home/bloc/home_event.dart';
import 'package:async_shop/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<GetProducts>(_onGetProducts);
  }

  void _onGetProducts(GetProducts event, Emitter<HomeState> emit) async {}
}
