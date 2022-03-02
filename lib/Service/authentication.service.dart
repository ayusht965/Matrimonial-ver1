import 'package:flutter/material.dart';
import 'package:matrimonial_1/credentials/supabase.credentials.dart';
import 'package:supabase/supabase.dart';

class AuthenticationService {
  Future<String?> signupEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signUp(email, password);

    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("SingnUp is Successful : $userEmail")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("SignUp error :${response.error!.message}")));
    }
  }

  Future<String?> LoginEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signIn(
            email: email,
            password: password,
            options: AuthOptions(redirectTo: SupabaseCredentials.APIURL));

    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login is Successful : $userEmail")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("login error :${response.error!.message}")));
    }
  }

  Future sendVerificationCode({
    required String phoneNumber,
    required BuildContext context,
  }) async {
    try {
      GotrueSessionResponse response =
          await SupabaseCredentials.supabaseClient.auth.signIn(
              phone: phoneNumber,
              options: AuthOptions(redirectTo: SupabaseCredentials.APIURL));
      if (response.error == null) {
        print(response.data);
      } else {
        print(response.error!.message);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:
                Text("Mobile Auth Process failed:${response.error!.message}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  Future verifyPhoneNumber({
    required String phone,
    required String token,
    required BuildContext context,
  }) async {
    try {
      GotrueSessionResponse response =
          await SupabaseCredentials.supabaseClient.auth.verifyOTP(phone, token);
      if (response.error == null) {
        print(response.data);
      } else {
        print(response.error!.message);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:
                Text("Mobile Auth Process failed:${response.error!.message}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
