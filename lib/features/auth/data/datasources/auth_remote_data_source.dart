import 'dart:async';
import 'dart:convert';

import 'package:edu_app/core/error/failure.dart';
import 'package:edu_app/features/auth/data/models/auth_response_model.dart';
import 'package:http/http.dart' as http;

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login(String email, String passwod);
  Future<AuthResponseModel> register(
      String firstName, String lastName, String email, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final http.Client client;
  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<AuthResponseModel> login(String email, String passwod) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AuthResponseModel> register(
      String firstName, String lastName, String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  Future<AuthResponseModel> _loginApi(String api) async {
    final response = await client.get(Uri.parse(api), headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException("ServerException: response error");
    }
  }
}
