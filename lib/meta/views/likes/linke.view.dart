import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.splash,
        title: 'Liked Profiles'.text.color(AppTheme.primary).make(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppTheme.primary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: AppTheme.secondary),
        child: ListView.builder(
            itemBuilder: (context, index) => ProfileListView().py8().px8(),
            itemCount: 5),
      ),
    );
  }
}

class ProfileListView extends StatelessWidget {
  const ProfileListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxContinuousRectangle(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      backgroundColor: Colors.black,
      radius: 50,
      backgroundImage: const DecorationImage(
          image: NetworkImage(
              'https://static-koimoi.akamaized.net/wp-content/new-galleries/2011/03/sonam-kapoor-002.jpg'),
          fit: BoxFit.cover,
          opacity: 0.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  'Sonam Kapoor'.text.white.bold.size(20).make(),
                  ', 27'.text.white.size(20).make()
                ],
              ),
              'Lives in kolkata, works at facebook'.text.gray100.make(),
            ],
          ).px8().py16(),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black.withOpacity(0.4)),
              minimumSize: MaterialStateProperty.all<Size>(const Size(100, 45)),
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
                'Contact'.text.white.make().px8()
              ],
            ),
          ).px8().py16(),
        ],
      ),
    );
  }
}
