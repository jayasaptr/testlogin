part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeGetDataSuccessState extends HomeState {
  final GetListUser data;

  const HomeGetDataSuccessState(this.data);
}

class HomeGetDataFailedState extends HomeState {
  final String error;

  const HomeGetDataFailedState(this.error);
}
