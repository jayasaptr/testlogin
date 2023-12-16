part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();
  
  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final LoginModel loginModel;
  const LoginSuccess(this.loginModel);
}

final class LoginError extends LoginState {
  final String message;
  const LoginError(this.message);
}

