import 'package:dartz/dartz.dart';
import 'package:tesapp/model/login_model.dart';
import 'package:tesapp/repositories/login/base_login_repository.dart';

class GetLogin {
  final BaseLoginRepository repository;
  GetLogin(this.repository);

  Future<Either<String, LoginModel>> login(String email, String password) {
    return repository.login(email, password);
  }
}
