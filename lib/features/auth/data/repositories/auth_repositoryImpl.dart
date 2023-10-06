import 'package:dartz/dartz.dart';
import 'package:edu_app/core/error/failure.dart';
import 'package:edu_app/features/auth/data/models/login_model.dart';
import 'package:edu_app/features/auth/domain/entities/sign_up.dart';
import 'package:edu_app/features/auth/domain/repositories/auth_repository.dart';

import '../datasources/auth_remote_data_source.dart';
import '../models/auth_response_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failure, AuthResponseModel>> login(
      String email, String password) async {
    try {
      LoginModel loginModel = LoginModel(email: email, password: password);
      final AuthResponseModel authResponseModel =
          await authRemoteDataSource.login(loginModel);
      return Right(authResponseModel);
    } on ServerException {
      return const Left(ServerFailure("Unable to get data from remote"));
    }
  }

  @override
  Future<Either<Failure, SignUp>> signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
