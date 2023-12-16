import 'package:get_it/get_it.dart';
import 'package:tesapp/bloc/home/home_bloc.dart';
import 'package:tesapp/bloc/login/login_bloc.dart';
import 'package:tesapp/repositories/home/base_home_repository.dart';
import 'package:tesapp/repositories/home/home_repository.dart';
import 'package:tesapp/repositories/login/base_login_repository.dart';
import 'package:tesapp/repositories/login/login_repository.dart';
import 'package:tesapp/usecase/get_home.dart';
import 'package:tesapp/usecase/get_login.dart';

final locator = GetIt.instance;
void initialize() {
  //use case
  locator.registerFactory(() => GetLogin(locator()));
  locator.registerFactory(() => GetHome(locator()));

  //bloc
  locator.registerFactory(() => LoginBloc(locator()));
  locator.registerFactory(() => HomeBloc(locator()));

  //repository
  locator.registerLazySingleton<BaseLoginRepository>(() => LoginRepository());
  locator.registerLazySingleton<BaseHomeRepository>(() => HomeRepository());
}
