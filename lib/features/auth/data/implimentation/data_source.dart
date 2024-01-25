import 'dart:convert';
import 'dart:developer';

import 'package:anm_mart/constants/url.dart';
import 'package:anm_mart/core/response_handle.dart';
import 'package:anm_mart/features/auth/data/repositories/repositories.dart';
import 'package:anm_mart/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class AuthImplimentation implements AuthenticationServices {
  @override
  Future<ResponseHandler<UserModel>> signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      Dio dio = Dio();
      final request = jsonEncode({
        "name": userName,
        "email": email,
        "password": password,
      });
      final response = await http.post(Uri.parse("$url/user/auth/signup"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: request);

      // final response = await dio.post("$url/user/auth/signup", data: {
      //   "name": userName,
      //   "email": email,
      //   "password": password,
      // });
      log("aaa");
      log("lll ${response.body}");
      // switch (response.statusCode) {
      //   case 200:
      //     log("bbb");
      //     final data = UserModel.fromjson(response.body);
      //     return ResponseHandler.success(data);
      //   case 400:
      //     log("ccc");
      //     return ResponseHandler.error(jsonDecode(response.data)['err']);
      //   case 500:
      //     log("ddd");
      //     return ResponseHandler.error(jsonDecode(response.data)['err']);
      //   default:
      //     return ResponseHandler.error("call fialed");
      // }
      return ResponseHandler.loading();
    } catch (e) {
      log("error $e");
      return ResponseHandler.error("call fialed");
    }
  }
}
