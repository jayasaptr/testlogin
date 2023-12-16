import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tesapp/model/get_list_user_model.dart';
import 'package:tesapp/usecase/get_home.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHome getHome;

  HomeBloc(this.getHome) : super(HomeInitial()) {
    on<HomeInitialEvent>((event, emit) async {
      emit(HomeLoadingState());
      final result = await getHome.getListUser();
      result.fold(
        (l) => emit(HomeGetDataFailedState(l)),
        (r) => emit(HomeGetDataSuccessState(r)),
      );
    });
  }
}
