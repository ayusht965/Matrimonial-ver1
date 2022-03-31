import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:matrimonial_1/app/providers/routes/app.routes.dart';
import 'package:matrimonial_1/app/theme/theme.providers.dart';
import 'package:matrimonial_1/meta/views/likes/linke.view.dart';
import 'package:matrimonial_1/widgets/profileView.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
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
                'https://static-koimoi.akamaized.net/wp-content/new-galleries/2011/03/sonam-kapoor-002.jpg',
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
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.ProfileRoute),
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite_border_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LikePage()));
            },
          ),
        ],
      ),
      drawer: ClipPath(
        clipper: _DrawerClipper(),
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  VxCircle(
                    radius: 100,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://static-koimoi.akamaized.net/wp-content/new-galleries/2011/03/sonam-kapoor-002.jpg',
                      ),
                    ),
                  ).p16(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      'Iresh Sharma'.text.fontWeight(FontWeight.w900).make(),
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppTheme.splash,
                border: Border.all(
                  color: AppTheme.primary,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      'Viewed'.text.size(20).black.tight.bold.make(),
                      '10'.text.gray500.size(30).make(),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      'Remaining'.text.size(20).black.tight.bold.make(),
                      '15'.text.gray500.size(30).make(),
                    ],
                  ),
                  TextButton(
                    onPressed: () => {},
                    style: AppTheme.primaryButton.copyWith(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    child: "Add More >".text.white.make().p4(),
                  )
                ],
              ).p16(),
            ).p16(),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Dismissible(
                  key: Key(index.toString()),
                  onDismissed: (direction) {
                    print('Dismissed');
                  },
                  background: Container(
                      color: AppTheme.secondary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Lottie.asset(
                            "assets/JSON/cancel.json",
                            width: 180,
                            height: 180,
                          )
                        ],
                      )),
                  secondaryBackground: Container(
                      color: AppTheme.secondary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Lottie.asset(
                            "assets/JSON/like.json",
                            width: 180,
                            height: 180,
                          )
                        ],
                      )),
                  child: ProfileView(id: index).px12(),
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
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
