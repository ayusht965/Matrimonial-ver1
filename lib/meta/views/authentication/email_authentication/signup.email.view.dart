import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/providers/routes/app.routes.dart';
import 'package:matrimonial_1/core/notifier/authentication.notifier.dart';
import 'package:provider/provider.dart';

class SignupEmail extends StatefulWidget {
  const SignupEmail({Key? key}) : super(key: key);

  @override
  State<SignupEmail> createState() => _SignupEmailState();
}

class _SignupEmailState extends State<SignupEmail> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AuthenticationNotifier authenticationNotifier =
        Provider.of<AuthenticationNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp with Email"),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: "Enter Mail"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(hintText: "Enter Password"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                String email = emailController.text;
                String password = passwordController.text;

                if (email.isNotEmpty && password.isNotEmpty) {
                  await authenticationNotifier.signUpEmail(
                      context: context, email: email, password: password);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Fill in credentials")));
                }
              },
              child: Text("SignUp")),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.LoginEmailRoute);
              },
              child: const Text("Already have an account? Login."))
        ],
      )),
    );
  }
}
