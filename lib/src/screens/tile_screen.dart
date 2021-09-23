import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/image_path.dart';
import 'package:flutter/material.dart';


class TileScreen extends StatefulWidget {
  static String id = 'tile_screen';
  @override
  _TileScreenState createState() => _TileScreenState();
}

class _TileScreenState extends State<TileScreen> {
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
        padding: EdgeInsets.only(
          top: he*0.15
        ),
        child: ListView(scrollDirection: Axis.vertical, children: [
          ImageOfPages( imagePath: 'images/Tile/AustriaSnow.jpg',title: 'Austria Snow'),
          ImageOfPages( imagePath: 'images/Tile/AY.jpg',title: 'AY'),
          ImageOfPages( imagePath: 'images/Tile/DaltileCottageBrown.jpg',title: 'Daltile Cottage Brown'),
          ImageOfPages( imagePath: 'images/Tile/DanyaStream.jpg',title: 'Danya Stream'),
          ImageOfPages( imagePath: 'images/Tile/HerringboneWoodenLook.jpg',title: 'Herring Bone Wooden Look'),
          ImageOfPages( imagePath: 'images/Tile/ListoneTundraShabby.jpg',title: 'Listone Tundra Shabby'),
          ImageOfPages( imagePath: 'images/Tile/MarbleTilesTextureSeamless.jpg',title: 'Marble Tiles Texture Seamless'),
          ImageOfPages( imagePath: 'images/Tile/MatteBlack.jpg',title: 'Matte Black'),
          ImageOfPages( imagePath: 'images/Tile/MiamiWhiteRope.jpg',title: 'Miami White Rope'),
          ImageOfPages( imagePath: 'images/Tile/MontecitoMsiCeramic.jpg',title: 'Montecito Msi Ceramic'),
          ImageOfPages( imagePath: 'images/Tile/NCOTBRO.jpg',title: 'NCOTBRO'),
          ImageOfPages( imagePath: 'images/Tile/OakTimber.jpg',title: 'Oak Timber'),
          ImageOfPages( imagePath: 'images/Tile/PaigeGrigioHexagon.png',title: 'Paige Grigio Hexagon'),
          ImageOfPages( imagePath: 'images/Tile/RMW.jpg',title: 'RMW'),
          ImageOfPages( imagePath: 'images/Tile/TundraGrayMarble.jpg',title: 'Tundra Gray Marble'),


          Container(
            margin: EdgeInsets.only(left:30.0,bottom: 180.0),
          ),



        ]),
      )
    ]);
  }
}

