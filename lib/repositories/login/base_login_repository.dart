import 'package:dartz/dartz.dart';
import 'package:tesapp/model/login_model.dart';

abstract class BaseLoginRepository {
  Future<Either<String, LoginModel>> login(String email, String password);
}