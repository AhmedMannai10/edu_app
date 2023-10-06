import 'dart:async';
import 'dart:convert';

import 'package:edu_app/core/error/failure.dart';
import 'package:edu_app/features/auth/data/models/auth_response_model.dart';
import 'package:http/http.dart' as http;

import '../models/login_model.dart';
import '../models/sign_up_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login(LoginModel loginModel);
  Future<AuthResponseModel> register(SignUpModel signUpModel);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<AuthResponseModel> login(LoginModel loginModel) {
    return _login("http://localhost:8080/login", loginModel);
  }

  @override
  Future<AuthResponseModel> register(SignUpModel signUpModel) {
    return _signUp("http://localhost:8080/signup", signUpModel);
  }

  Future<AuthResponseModel> _login(String api, LoginModel loginModel) async {
    final response = await client.post(Uri.parse(api), headers: {
      'Content-Type': 'application/json',
    }, body: {
      'email': loginModel.email,
      'password': loginModel.password
    });

    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException("ServerException: response error");
    }
  }

  Future<AuthResponseModel> _signUp(String api, SignUpModel signupModel) async {
    final response = await client.post(Uri.parse(api), headers: {
      'Content-Type': 'application/json',
    }, body: {
      'firstName': signupModel.firstName,
      'lastName': signupModel.lastName,
      'email': signupModel.email,
      'password': signupModel.password
    });

    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException(
          "ServerException: \nresponse error when trying to register");
    }
  }
}
