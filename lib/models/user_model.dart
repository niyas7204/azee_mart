class UserModel {
  final String id;
  final String userName;
  final String email;

  final String address;
  final String token;

  UserModel(
      {required this.id,
      required this.userName,
      required this.email,
      required this.address,
      required this.token});

  factory UserModel.fromjson(Map<String, dynamic> map) {
    return UserModel(
      id: map['_id'] ?? '',
      userName: map['name'] ?? '',
      email: map['email'] ?? '',
      address: map['address'] ?? '',
      token: map['token'] ?? '',
    );
  }
}
