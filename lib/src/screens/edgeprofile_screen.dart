import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/profile_image.dart';

import 'colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EdgeProfileScreen extends StatefulWidget {
  static String id = 'edgeprofile_screen';
  @override
  _EdgeProfileScreenState createState() => _EdgeProfileScreenState();
}

class _EdgeProfileScreenState extends State<EdgeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        BackgroundImage(),
        Center(
          child: Opacity(

              opacity: 0.3,
              child: Container(

                width: wi * .9,
                height: he * .9,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(5, 5),
                      blurRadius: 3.0,
//blurRadius: 10.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -3),
                      blurRadius: 2,
//blurRadius: 10.0,
                    ),
                  ],
                ),
              )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: he * 0.02),
                  child: Text(
                    'Profile Edges',
                    style: TextStyle(
                      fontSize: wi * 0.07,
                      color: AppColors.straw,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10.0,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileImage(
                        FImagePath: 'images/EasedEdge01.png',
                        FIText: 'Eased Edges',
                        SImagePath: 'images/3-8-Pencil01.png',
                        SIText: '3/8 Pencil Edge'),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    ProfileImage(
                        FImagePath: 'images/HalfBullnose01.png',
                        FIText: '1/2 Bullnose',
                        SImagePath: 'images/1-4-BevelEdge01.png',
                        SIText: '1/4 Bevel Edge'),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    ProfileImage(
                        FImagePath: 'images/1-2-BevelEdge01.png',
                        FIText: '1/2 Bevel Edge',
                        SImagePath: 'images/FullBulnose01.png',
                        SIText: 'FullBullnose '),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    ProfileImage(
                        FImagePath: 'images/OgeeEdge01.png',
                        FIText: 'Ogee Edge',
                        SImagePath: 'images/DoubleOgee01.png',
                        SIText: 'Double Ogee '),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    ProfileImage(
                        FImagePath: 'images/DemiBullnose01.png',
                        FIText: 'Demi Bullnose ',
                        SImagePath: 'images/Waterfall01.png',
                        SIText: 'Waterfall Edge'),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
