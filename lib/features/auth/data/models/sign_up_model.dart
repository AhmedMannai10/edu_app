import 'package:edu_app/features/auth/domain/entities/entities.dart';

class SignUpModel extends SignUp {
  SignUpModel(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.password});
}
