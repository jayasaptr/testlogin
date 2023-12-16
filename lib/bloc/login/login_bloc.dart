import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tesapp/model/login_model.dart';
import 'package:tesapp/usecase/get_login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLogin getLogin;
  static final email = TextEditingController();
  static final password = TextEditingController();
  LoginBloc(this.getLogin) : super(LoginInitial()) {
    on<LoginEventLogin>((event, emit) async {
      emit(LoginLoading());
      final result = await getLogin.login(email.text, password.text);
      result.fold((l) {
        emit(LoginError(l));
      }, (r) {
        emit(LoginSuccess(r));
      });
    });
  }
}
