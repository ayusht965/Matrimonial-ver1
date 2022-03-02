import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:matrimonial_1/app/providers/routes/app.routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.WelcomeRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Lottie.network(
              'https://assets4.lottiefiles.com/private_files/lf30_HVvOYl.json'),
        ],
      ),
    ));
  }
}
