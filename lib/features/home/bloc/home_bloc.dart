import 'package:flutter_bloc/flutter_bloc.dart';

// ----------------------
// EVENTOS
// ----------------------
abstract class HomeEvent {}

class IncrementEvent extends HomeEvent {}
class DecrementEvent extends HomeEvent {}
class ResetEvent extends HomeEvent {}

// ----------------------
// ESTADO
// ----------------------
class HomeState {
  final int counter;
  const HomeState(this.counter);
}

// ----------------------
// BLOC
// ----------------------
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(0)) {
    on<IncrementEvent>((event, emit) => emit(HomeState(state.counter + 1)));
    on<DecrementEvent>((event, emit) => emit(HomeState(state.counter - 1)));
    on<ResetEvent>((event, emit) => emit(const HomeState(0)));
  }
}
