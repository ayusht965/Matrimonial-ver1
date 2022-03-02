import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/providers/routes/app.routes.dart';
import 'package:provider/provider.dart';

import 'app/providers/app.providers.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(child: Lava(), providers: AppProviders.providers);
  }
}

class Lava extends StatelessWidget {
  const Lava({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.WelcomeRoute,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
