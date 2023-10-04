import 'package:dartz/dartz.dart';
import '../entities/entities.dart';
import '../../../../core/error/failure.dart';

abstract class AuthRepository {
    Future<Either<Failure, Login>> login();
    
    Future<Either<Failure, SignUp>> signup();
}
