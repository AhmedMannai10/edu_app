import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/auth_response_model.dart';
import '../entities/entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseModel>> login(
      String email, String password);

  Future<Either<Failure, SignUp>> signup();
}
