import 'package:asdapp/src/screens/edgeprofile_screen.dart';
import 'package:asdapp/src/screens/granite_screen.dart';
import 'package:asdapp/src/screens/homescreen_button.dart';
import 'package:asdapp/src/screens/marble_screen.dart';
import 'package:asdapp/src/screens/photo_album.dart';
import 'package:asdapp/src/screens/quartz_screen.dart';
import 'package:asdapp/src/screens/sink_screen.dart';
import 'package:asdapp/src/screens/text.dart';
import 'package:asdapp/src/screens/tile_screen.dart';
import 'package:asdapp/src/screens/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:asdapp/src/screens/background_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      User loggedInUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundImage(),
        Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  _auth.signOut();
                  Navigator.pushNamed(context, WelcomePage.id);
                  //Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 80.0,
                  child: Image.asset('images/ASDlogo.png'),
                ),
              ),
              Hero(
                tag: 'logo',
                child: Container(
                  height: 50.0,
                  child: Image.asset('images/newlogo.png'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                //indent: 30.0,
                height: 0.0,
              ),
              Center(
                child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MarbleScreen.id);
                    },
                    child: HomescreenButton(
                      BuText: 'Marble',
                    )),
              ),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                indent: 20.0,
                endIndent: 20.0,
                height: 0.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, GraniteScreen.id);
                  },
                  child: HomescreenButton(
                    BuText: 'Granite',
                  )),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                indent: 20.0,
                endIndent: 20.0,
                height: 0.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, QuartzScreen.id);
                  },
                  child: HomescreenButton(
                    BuText: 'Quartz',
                  )),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                indent: 20.0,
                endIndent: 20.0,
                height: 0.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, TileScreen.id);
                  },
                  child: HomescreenButton(
                    BuText: 'Tile',
                  )),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                indent: 20.0,
                endIndent: 20.0,
                height: 0.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SinkScreen.id);
                  },
                  child: HomescreenButton(
                    BuText: 'Sink',
                  )),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                indent: 20.0,
                endIndent: 20.0,
                height: 0.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, EdgeProfileScreen.id);
                  },
                  child: HomescreenButton(
                    BuText: 'Edge Profile',
                  )),
              Divider(
                color: Color(0xFFD3B78D),
                thickness: 0.5,
                //indent: 30.0,
                height: 1.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          _launchUrl('https://www.google.com/maps/place/Absolute+Stone+Design/@37.711016,-77.465443,17z/data=!4m5!3m4!1s0x0:0xc394ddef296f1e57!8m2!3d37.710877!4d-77.4662537?hl=en-US');
                        },
                        child: Icon(
                          Icons.my_location,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text('Our Location', style: TextStyles.body1)
                    ],
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, PhotoAlbum.id);
                        },
                        child: Icon(
                          Icons.photo_album_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text('Our Jobs', style: TextStyles.body1)
                    ],
                  ),
                  // SizedBox(
                  //   width: 50.0,
                  // ),
                  // Column(
                  //   children: [
                  //     MaterialButton(
                  //       onPressed: () {},
                  //       child: Icon(
                  //         Icons.person_outlined,
                  //         color: Colors.white,
                  //         size: 50,
                  //       ),
                  //     ),
                  //     Text(
                  //       'Order Us',
                  //       style: TextStyles.mysmalltext,
                  //     ),
                  //   ],
                  // ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
Future<void> _launchUrl(String urlString) async {
  if (await canLaunch(urlString)) {
    await launch (
        urlString
    );
  }else {
    print('Can\'t Launch Url');
  }
}