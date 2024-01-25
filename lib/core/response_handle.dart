import 'dart:convert';

import 'package:anm_mart/core/enums.dart';
import 'package:anm_mart/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ResponseHandler<T> {
  String? errorMessage;
  T? data;
  StateStatus? status;
  ResponseHandler(this.data, this.errorMessage, this.status);
  ResponseHandler.loading() : status = StateStatus.loading;
  ResponseHandler.error(this.errorMessage) : status = StateStatus.error;
  ResponseHandler.success(this.data) : status = StateStatus.success;
}
