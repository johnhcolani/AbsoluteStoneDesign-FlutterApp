
import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/image_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MarbleScreen extends StatefulWidget {
  static const String id = 'marble_screen';
  @override
  _MarbleScreenState createState() => _MarbleScreenState();
}

class _MarbleScreenState extends State<MarbleScreen> {
  @override
  Widget build(BuildContext context) {
    var he= MediaQuery.of(context).size.height;
    return Stack(children: [
      BackgroundImage(),
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
      Padding(
        padding: EdgeInsets.only(top: he*0.15),
        child: ListView(scrollDirection: Axis.vertical, children: [
          ImageOfPages( imagePath: 'images/Marble/AfyonBlack.jpg',title: 'Afyon Black'),
          ImageOfPages( imagePath: 'images/Marble/Arabesco.png',title: 'Arabesco'),
          ImageOfPages( imagePath: 'images/Marble/ArabescataOrobeco.png',title: 'ArabescataOrobeco'),
          ImageOfPages( imagePath: 'images/Marble/Arabescato.png',title: 'Arabescato'),
          ImageOfPages( imagePath: 'images/Marble/BrecciaParadiso.jpg',title: 'Breccia Paradiso'),
          ImageOfPages( imagePath: 'images/Marble/CalacataGold.jpg',title: 'Calacatta Gold'),
          ImageOfPages( imagePath: 'images/Marble/DoverWhite.jpg',title: 'Dover White'),
          ImageOfPages( imagePath: 'images/Marble/Ebony.jpg',title: 'Ebony'),
          ImageOfPages( imagePath: 'images/Marble/EmperadorLight.jpg',title: 'Emperador Light'),
          ImageOfPages( imagePath: 'images/Marble/EmperadorDark.jpg',title: 'Emperador Dark'),
          ImageOfPages( imagePath: 'images/Marble/GrayLightDarkCalacatta.jpg',title: 'Gray Light Dark Calacatta'),
          ImageOfPages( imagePath: 'images/Marble/KariaCream.jpg',title: 'Karia Cream'),
          ImageOfPages( imagePath: 'images/Marble/marble-around-the-world.jpg',title: 'marble around the world'),
          ImageOfPages( imagePath: 'images/Marble/OnicaMielle.jpg',title: 'Onica Mielle'),
          ImageOfPages( imagePath: 'images/Marble/RojoAlicanteLight.jpg',title: 'Rojo Alicante Light'),
          ImageOfPages( imagePath: 'images/Marble/StatuaryWhite.jpg',title: 'Statuary White'),
          ImageOfPages( imagePath: 'images/Marble/WhiteCarrara.jpg',title: 'White Carrara'),
          ImageOfPages( imagePath: 'images/Marble/WhiteMarble.jpg',title: 'White Marble'),




        ]),
      )
    ]);
  }
}

