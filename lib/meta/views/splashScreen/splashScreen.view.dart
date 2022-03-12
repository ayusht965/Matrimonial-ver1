import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:matrimonial_1/app/providers/routes/app.routes.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, AppRoutes.WelcomeRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.splash,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const Image(image: AssetImage('assets/images/logo.jpg')),
            Lottie.asset(
              'assets/JSON/splash-ring.json',
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ],
        ));
  }
}
