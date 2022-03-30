// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';

import '../app/theme/custom_btn_nav_bar.dart';
import '../enum.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          textAlign: TextAlign.center,
          style: TextStyle(color: AppTheme.primary),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppTheme.primary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppTheme.splash,
      ),
      body: Body(),
    );
  }
}
