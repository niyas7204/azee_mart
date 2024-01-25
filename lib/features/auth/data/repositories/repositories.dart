import 'package:anm_mart/core/response_handle.dart';
import 'package:anm_mart/models/user_model.dart';

abstract class AuthenticationServices {
  Future<ResponseHandler<UserModel>> signUp(
      {required String userName,
      required String email,
      required String password});
}
