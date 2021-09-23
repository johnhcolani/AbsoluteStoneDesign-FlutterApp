import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/text.dart';
import 'package:asdapp/src/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dart:io';
import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    _handleSplash();
  }

  Widget build(BuildContext context) {

    if (Platform.isIOS) {
      return CupertinoPageScaffold(
          child: Stack(
            children: [
              BackgroundImage(),
              WelcomePageItems(),
            ],
          ));
    } else {
      return Scaffold(
          body: Stack(
            children: [
              BackgroundImage(),
              WelcomePageItems(),
            ],
          ));
    }
  }

  void _handleSplash() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushNamed(context, WelcomePage.id);

  }
}

class WelcomePageItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('We bring', style: TextStyles.mytext),
                Text('heart of the nature',
                style: TextStyles.mytext),
                Text('to your life', style: TextStyles.mytext),
                Text('by the modern',
                    style: TextStyles.mytext),
                Text('technologhy',
                    style: TextStyles.mytext),
              ],
            ),
            // SizedBox(
            //   width: 80.0,
            // ),
            Container(
              height: 150.0,
              child: Image.asset('images/ASDlogo.png'),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            'Welcome',
              style: TextStyles.myaddtext
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.0, bottom: 0.0),
          child: Center(
            child: Container(
              height: 200.0,
              child: Image.asset('images/AdPics.png'),
            ),
          ),
        ),
        Text(
          'www.absolutestonedesign.com',
            style: TextStyles.mysmalltext
        ),
      ],
    );
  }
}
