import 'package:dartz/dartz.dart';
import 'package:tesapp/model/get_list_user_model.dart';
import 'package:tesapp/repositories/home/base_home_repository.dart';

class GetHome {
  final BaseHomeRepository repository;

  GetHome(this.repository);

  Future<Either<String, GetListUser>> getListUser() {
    return repository.getListUser();
  }
}
