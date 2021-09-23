import 'package:asdapp/components/rounded_button.dart';
import 'package:asdapp/constants.dart';
import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Signup extends StatefulWidget {
  static const String id = 'signup_page';

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _auth=FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, WelcomePage.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/ASDlogo.png'),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  email =value;
                },
                decoration:  kTextFieldDecoration.copyWith(hintText: 'Enter your email')
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                  textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  password = value;
                },
                decoration:  kTextFieldDecoration.copyWith(hintText: 'Enter your password')
              ),
              const SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                colour: Colors.blueAccent,
                title: 'Register',
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser !=null) {
                      Navigator.pushNamed(context,HomePage.id);
                    }
                  }
                  catch (e) {
                    print(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
