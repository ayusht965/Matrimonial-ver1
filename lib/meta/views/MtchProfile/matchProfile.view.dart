import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:velocity_x/velocity_x.dart';

class MatchProfile extends StatelessWidget {
  int id;

  MatchProfile({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.splash,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'mainImage-$id',
              child: Image.network(
                'https://static-koimoi.akamaized.net/wp-content/new-galleries/2011/03/sonam-kapoor-002.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Row(
              children: [
                'Sonam Kapoor'.text.bold.size(30).make(),
                ', 27'.text.size(30).make(),
              ],
            ).p8(),
            'Lives in kolkata, works at facebook'.text.gray900.make().px8(),
            'About'.text.black.bold.size(25).make().px8().py16(),
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                .text
                .center
                .italic
                .color(AppTheme.primary)
                .size(15)
                .make()
                .px8()
                .py16(),
            Image.network(
              'https://images.newindianexpress.com/uploads/user/imagelibrary/2020/7/14/w1200X800/Sonam_Kapoor_EPS.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ).py16(),
            'Interests'.text.black.bold.size(25).make().px8().py16(),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                'Dance'.text.white.center.bold.make().p4().capsule(
                    backgroundColor: AppTheme.primary,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.05),
                'Reading'.text.white.center.bold.make().p4().capsule(
                    backgroundColor: AppTheme.primary,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.05),
                'Cricket'.text.white.center.bold.make().p4().capsule(
                    backgroundColor: AppTheme.primary,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.05),
                'Singing'.text.white.center.bold.make().p4().capsule(
                    backgroundColor: AppTheme.primary,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.05),
                'Travelling'.text.white.center.bold.make().p4().capsule(
                    backgroundColor: AppTheme.primary,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.05),
              ],
            ).p16(),
            Image.network(
              'https://caknowledge.com/wp-content/uploads/2021/03/Sonam-Kapoor-net-Worth.jpeg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ).py16(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        onPressed: () => {},
        child: const Icon(CupertinoIcons.conversation_bubble),
      ),
    );
  }
}
