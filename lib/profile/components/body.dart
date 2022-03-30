import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:velocity_x/velocity_x.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: Icons.verified_user_outlined,
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: CupertinoIcons.bell,
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: CupertinoIcons.settings,
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: CupertinoIcons.question_circle,
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: CupertinoIcons.person_badge_minus,
            press: () {},
          ),
          SizedBox(height: 100),
          Align(
            alignment: Alignment.bottomCenter,
            child: 'Made with ❤️ by Iresharma and team'
                .text
                .color(AppTheme.primary)
                .make(),
          )
        ],
      ),
    );
  }
}
