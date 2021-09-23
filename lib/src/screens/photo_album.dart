import 'package:asdapp/components/rounded_button.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'background_image.dart';
import 'text.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoAlbum extends StatefulWidget {
  static const String id = 'photo_album';

  @override
  _PhotoAlbumState createState() => _PhotoAlbumState();
}

class _PhotoAlbumState extends State<PhotoAlbum> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
          backgroundColor: Colors.transparent, child: AlbumPics());
    } else {
      return Scaffold(body: AlbumPics());
    }
  }
}

class AlbumPics extends StatelessWidget {
  const AlbumPics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
    Padding(
    padding: EdgeInsets.only(top: 50.0),
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
      Padding(
        padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: ListView(scrollDirection: Axis.vertical, children: [
RoundedButton(colour: Colors.lightGreen, title: 'Make an Appointment',
    onPressed:(){
_launchUrl('https://www.absolutestonedesign.com/contact-us');
}),
          Column(
            children: [
              Text('Absolute Stone Design brings', style: TextStyles.mytext),
              Text('heart of the nature', style: TextStyles.mytext),
              Text('to your life', style: TextStyles.mytext),
              Text('by the modern technologhy', style: TextStyles.mytext),
             Divider(color: Colors.white),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70.0,
                    child: Image.asset('images/ASDlogo.png'),
                  ),
                  Column(
                    children: [
                      Text('11200 Washington Highway', style: TextStyles.body1),
                      Text('Glen Allen Virginia 23059', style: TextStyles.body1),
                      Text('Tel: 804-752-2001', style: TextStyles.body1),
                      Text('Fax: 804-752-8414', style: TextStyles.body1),
                    ],
                  ),

                  // SizedBox(
                  //   width: 80.0,
                  // ),

                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),

          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic9.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic10.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic11.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic7.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic6.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic5.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text('our precize seam looks seamless',
              style: TextStyles.mylargetext),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/daynight.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0, color: Colors.white),
              image: DecorationImage(
                image: AssetImage('images/gallary_pics/pic1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
        ]),
      )
    ]);
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
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