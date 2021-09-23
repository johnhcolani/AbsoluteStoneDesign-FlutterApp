
import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/image_path.dart';
import 'package:flutter/material.dart';

class GraniteScreen extends StatefulWidget {
  static String id = 'granite_screen';
  @override
  _GraniteScreenState createState() => _GraniteScreenState();
}

class _GraniteScreenState extends State<GraniteScreen> {
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
          ImageOfPages( imagePath: 'images/Granite/AbsoluteBlackHoned.png',title: 'Absolute Black Honed'),
          ImageOfPages( imagePath: 'images/Granite/AbsoluteCream.png',title: 'Absolute Cream'),
          ImageOfPages( imagePath: 'images/Granite/AlaskaWhite.png',title: 'Alaska White'),
          ImageOfPages( imagePath: 'images/Granite/AlaskaCream.png',title: 'Alaska Cream'),
          ImageOfPages( imagePath: 'images/Granite/AmarilloOrnamental.png',title: 'Amarillo Ornamental'),
          ImageOfPages( imagePath: 'images/Granite/AquaVenato.png',title: 'Aqua Venato'),
          ImageOfPages( imagePath: 'images/Granite/AraraBlue.png',title: 'Arara Blue'),
          ImageOfPages( imagePath: 'images/Granite/ArticWhite.png',title: 'Artic White'),
          ImageOfPages( imagePath: 'images/Granite/Babylon.png',title: 'Babylon'),
          ImageOfPages( imagePath: 'images/Granite/bianco-romano-granite-tile-1276-1B.jpg',title: 'Bianco Romano'),
          ImageOfPages( imagePath: 'images/Granite/BlackFusion.jpg',title: 'Black Fusion'),
          ImageOfPages( imagePath: 'images/Granite/Copenhagen.jpg',title: 'Copenhagen'),
          ImageOfPages( imagePath: 'images/Granite/CottonWhite.jpg',title: 'Cotton White'),
          ImageOfPages( imagePath: 'images/Granite/DallasWhite.jpg',title: 'Dallas White'),
          ImageOfPages( imagePath: 'images/Granite/PersianPearl.jpg',title: 'Persian Pearl'),
          ImageOfPages( imagePath: 'images/Granite/VerdeUbatuba.jpg',title: 'Verde Ubatuba'),
          ImageOfPages( imagePath: 'images/Granite/WhiteIce.jpg',title: 'White Ice'),






          Container(
            margin: EdgeInsets.only(left:30.0,bottom: 180.0),
          ),



        ]),
      )
    ]);
  }
}

