import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../app/theme/custom_btn_nav_bar.dart';
import '../enum.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", textAlign: TextAlign.center),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
