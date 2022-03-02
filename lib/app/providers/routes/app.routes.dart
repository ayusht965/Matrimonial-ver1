import 'package:matrimonial_1/meta/views/authentication/email_authentication/login.email.view.dart';
import 'package:matrimonial_1/meta/views/authentication/email_authentication/signup.email.view.dart';
import 'package:matrimonial_1/meta/views/authentication/login.view.dart';
import 'package:matrimonial_1/meta/views/authentication/otp.view.dart';
import 'package:matrimonial_1/meta/views/authentication/welcome.view.dart';

class AppRoutes {
  static const String WelcomeRoute = "/welcome";
  static const String LoginRoute = "/login";
  static const String OtpRoute = "/otp";
  static const String LoginEmailRoute = "/loginEmail";
  static const String SignUpEmailRoute = "/signupEmail";

  static final routes = {
    WelcomeRoute: (context) => Welcome(),
    //phone auth routes
    LoginRoute: (context) => Login(),
    OtpRoute: (context) => Otp(),
    //email Auth routes
    LoginEmailRoute: (context) => LoginEmail(),
    SignUpEmailRoute: (context) => SignupEmail(),
  };
}