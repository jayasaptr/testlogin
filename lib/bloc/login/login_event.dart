part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginEventLogin extends LoginEvent {
  final String email;
  final String password;
  const LoginEventLogin({
    required this.email,
    required this.password,
  });

}
