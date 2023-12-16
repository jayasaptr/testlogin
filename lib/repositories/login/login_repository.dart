import 'package:dartz/dartz.dart';
import 'package:tesapp/model/error_model.dart';
import 'package:tesapp/model/login_model.dart';
import 'package:tesapp/repositories/login/base_login_repository.dart';
import 'package:dio/dio.dart';

class LoginRepository implements BaseLoginRepository {
  @override
  Future<Either<String, LoginModel>> login(
      String email, String password) async {
    const String baseUrl = 'https://reqres.in/api';
    try {
      final request = Dio().post("$baseUrl/login", data: {
        "email": email,
        "password": password,
      });
      final response = await request;
      final data = LoginModel.fromJson(response.data);
      return right(data);
    } on DioException catch (e) {
      final error = ErrorModel.fromJson(e.response!.data);
      return left(error.error!);
    }
  }
}
