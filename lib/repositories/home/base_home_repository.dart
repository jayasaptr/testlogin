import 'package:dartz/dartz.dart';
import 'package:tesapp/model/get_list_user_model.dart';

abstract class BaseHomeRepository {
  Future<Either<String, GetListUser>> getListUser();
}