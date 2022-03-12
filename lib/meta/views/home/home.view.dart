import 'package:flutter/material.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppTheme.splash,
        appBar: AppBar(
          backgroundColor: AppTheme.splash,
          centerTitle: true,
          title: Image.asset(
            'assets/images/logoSymbol.png',
            height: 50,
          ),
          leading: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: VxCircle(
              radius: 30,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://instagram.fmaa1-1.fna.fbcdn.net/v/t51.2885-15/274983724_497842345043482_5923224955383271347_n.jpg?stp=dst-jpg_e35_s1080x1080&_nc_ht=instagram.fmaa1-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=M4tG5_gaifIAX-Vf3xQ&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=Mjc4NDg4MTE3NjQ2NzM1MjgwMw%3D%3D.2-ccb7-4&oh=00_AT_n9MgYgOklDqgusZXjZ6W6-a-ZH3Tx__ZYJhRbqJEFVQ&oe=62344AF2&_nc_sid=30a2ef',
                ),
              ),
            ).p8(),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite_border_sharp,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: ClipPath(
          clipper: _DrawerClipper(),
          child: Drawer(
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        VxCircle(
                          radius: 100,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://instagram.fmaa1-1.fna.fbcdn.net/v/t51.2885-15/274983724_497842345043482_5923224955383271347_n.jpg?stp=dst-jpg_e35_s1080x1080&_nc_ht=instagram.fmaa1-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=M4tG5_gaifIAX-Vf3xQ&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=Mjc4NDg4MTE3NjQ2NzM1MjgwMw%3D%3D.2-ccb7-4&oh=00_AT_n9MgYgOklDqgusZXjZ6W6-a-ZH3Tx__ZYJhRbqJEFVQ&oe=62344AF2&_nc_sid=30a2ef',
                            ),
                          ),
                        ).p16(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            'Iresh Sharma'
                                .text
                                .fontWeight(FontWeight.w900)
                                .make(),
                            '@Iresharma'.text.gray500.make(),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 100),
                    for (var i = 0; i < 3; i++) ...{
                      ListTile(
                        title: 'Option'.text.size(24).make(),
                        leading: const Icon(Icons.settings),
                        subtitle: 'More Info'.text.gray500.make(),
                      )
                    },
                    ListTile(
                      title: 'Logout'.text.size(24).make(),
                      leading: const Icon(Icons.exit_to_app),
                      subtitle: 'Log out from app'.text.gray500.make(),
                    )
                  ]),
            ),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      'Profiles Viewed'.text.size(25).black.tighter.bold.make(),
                      '10'.text.gray500.size(35).make(),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      'Remaining'.text.size(25).black.tighter.bold.make(),
                      '15'.text.gray500.size(35).make(),
                    ],
                  ),
                ],
              ).p8(),
              Center(
                child: VxContinuousRectangle(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          'Sonam Kapoor'.text.white.bold.size(30).make(),
                          ', 27'.text.white.size(30).make()
                        ],
                      ),
                      'Lives in kolkata, works at facebook'.text.gray100.make()
                    ],
                  ).p32(),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: ElevatedButton(
                      style: AppTheme.secondaryButton,
                      child: 'View Profile'.text.make(),
                      onPressed: () => {},
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: ElevatedButton(
                      style: AppTheme.primaryButton,
                      child: 'Message'.text.white.make(),
                      onPressed: () => {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class _DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width - 50, 0);
    path.quadraticBezierTo(
        size.width, size.height / 2, size.width - 50, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
