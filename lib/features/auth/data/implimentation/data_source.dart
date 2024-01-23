import 'package:anm_mart/constants/url.dart';
import 'package:anm_mart/features/auth/data/repositories/repositories.dart';
import 'package:anm_mart/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthImplimentation implements AuthenticationServices {
  @override
  Future<void> signUp(
      {required String id,
      required String userName,
      required String email,
      required String address}) async {
    try {
      UserModel user = UserModel(
          id: id,
          userName: userName,
          email: email,
          address: address,
          token: '');
      http.post(Uri.parse("$url/user"));
    } catch (e) {}
  }
}
