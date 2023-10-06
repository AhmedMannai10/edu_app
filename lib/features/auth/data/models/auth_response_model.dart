class AuthResponseModel {
  int? id;
  String? token;
  String? error;

  AuthResponseModel(
      {required this.id, required this.token, required this.error});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
        id: json['id'], token: json['accessToken'], error: json['error']);
  }
  Map<String, dynamic> toJson() {
    return {
      'accessToken': token,
    };
  }
}
