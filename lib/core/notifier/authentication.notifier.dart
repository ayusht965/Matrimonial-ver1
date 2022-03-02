import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:matrimonial_1/Service/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService =
      new AuthenticationService();

  Future<String?> signUpEmail(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await _authenticationService.signupEmail(
          email: email, password: password, context: context);
    } catch (e) {
      print(e);
    }
  }

  Future<String?> LoginEmail(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await _authenticationService.LoginEmail(
          email: email, password: password, context: context);
    } catch (e) {
      print(e);
    }
  }

  Future<String?> sendVerificationCode(
      {required String phoneNumber, required BuildContext context}) async {
    try {
      await _authenticationService.sendVerificationCode(
          phoneNumber: phoneNumber, context: context);
    } catch (e) {
      print(e);
    }
  }

  Future<String?> verifyPhoneNumber(
      {required String phone,
      required BuildContext context,
      required String token}) async {
    try {
      await _authenticationService.verifyPhoneNumber(
          phone: phone, token: token, context: context);
    } catch (e) {
      print(e);
    }
  }
}
