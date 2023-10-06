import 'package:dartz/dartz.dart';
import 'package:edu_app/features/auth/data/models/auth_response_model.dart';
import 'package:edu_app/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/error/failure.dart';

class PostLogin {
  final AuthRepository repository;

  PostLogin(this.repository);

  Future<Either<Failure, AuthResponseModel>> call(
      String email, String password) async {
    return await repository.login(email, password);
  }
}
