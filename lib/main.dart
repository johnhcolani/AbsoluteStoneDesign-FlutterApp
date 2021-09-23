import 'package:asdapp/src/screens/edgeprofile_screen.dart';
import 'package:asdapp/src/screens/granite_screen.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/login_page.dart';
import 'package:asdapp/src/screens/marble_screen.dart';
import 'package:asdapp/src/screens/photo_album.dart';
import 'package:asdapp/src/screens/quartz_screen.dart';
import 'package:asdapp/src/screens/signup_page.dart';
import 'package:asdapp/src/screens/sink_screen.dart';
import 'package:asdapp/src/screens/tile_screen.dart';
import 'package:asdapp/src/screens/welcome_page.dart';
import 'package:asdapp/src/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText1:TextStyle(color: Colors.black54),
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomePage.id:(context)=>WelcomePage(),
          WelcomeScreen.id:(context)=>WelcomeScreen(),
          PhotoAlbum.id:(context)=>PhotoAlbum(),
          Login.id:(context)=>Login(),
          GraniteScreen.id:(context)=>GraniteScreen(),
          MarbleScreen.id:(context)=>MarbleScreen(),
          QuartzScreen.id:(context)=>QuartzScreen(),
          TileScreen.id:(context)=>TileScreen(),
          SinkScreen.id:(context)=>SinkScreen(),
          EdgeProfileScreen.id:(context)=>EdgeProfileScreen(),

          Signup.id:(context)=>Signup(),
          HomePage.id:(context)=>HomePage(),
        },
      );
    }
  }


