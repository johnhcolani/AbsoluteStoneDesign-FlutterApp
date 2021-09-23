import 'package:asdapp/components/rounded_button.dart';
import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/login_page.dart';
import 'package:asdapp/src/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  static String id = 'welcome_page';

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          BackgroundImage(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //padding: EdgeInsets.only(top: 250.0),
              children: [
                Container(
                  child: Image.asset('images/newlogo.png'),
                  height: 60.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    'Absolute Stone Design',
                    style: GoogleFonts.lato(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/ASDlogo.png'),
                    height: 100.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RoundedButton(
                  title: 'Log In',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  },),
                RoundedButton(
                  title: 'Register', colour: Colors.blueAccent,
                  onPressed: () {
                  Navigator.pushNamed(context, Signup.id);
                },),


              ],
            ),
          ),
        ]
    );
  }
}
