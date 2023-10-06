import 'package:dartz/dartz.dart';
import 'package:edu_app/core/error/failure.dart';
import 'package:edu_app/features/auth/domain/entities/login.dart';
import 'package:edu_app/features/auth/domain/entities/sign_up.dart';
import 'package:edu_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either<Failure, Login>> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SignUp>> signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
