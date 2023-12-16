import 'package:dartz/dartz.dart';
import 'package:tesapp/model/get_list_user_model.dart';
import 'package:tesapp/repositories/home/base_home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepository implements BaseHomeRepository {
  @override
  Future<Either<String, GetListUser>> getListUser() async{
    const String baseUrl = 'https://reqres.in/api';
    try {
      final request = Dio().get("$baseUrl/users?page=2");
      final response = await request;
      final data = GetListUser.fromJson(response.data);
      return right(data);
    } on DioException catch (e) {
      return left(e.response!.data.toString());
    }
  }
}
