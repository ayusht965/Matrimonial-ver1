import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxContinuousRectangle(
      width: MediaQuery.of(context).size.width - 10,
      height: MediaQuery.of(context).size.height * 0.7,
      backgroundColor: Colors.black,
      radius: 50,
      backgroundImage: const DecorationImage(
          image: NetworkImage(
              'https://static-koimoi.akamaized.net/wp-content/new-galleries/2011/03/sonam-kapoor-002.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  'Sonam Kapoor'.text.white.bold.size(30).make(),
                  ', 27'.text.white.size(30).make()
                ],
              ),
              'Lives in kolkata, works at facebook'.text.gray100.make(),
            ],
          ).px32().py16(),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black.withOpacity(0.4)),
              minimumSize: MaterialStateProperty.all<Size>(
                  Size(MediaQuery.of(context).size.width, 45)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(CupertinoIcons.conversation_bubble,
                    color: AppTheme.secondary),
                'Contact'.text.white.make().px16()
              ],
            ),
          ).px0().py0(),
        ],
      ),
    );
  }
}
