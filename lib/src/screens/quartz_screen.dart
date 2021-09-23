import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/image_path.dart';
import 'package:flutter/material.dart';

class QuartzScreen extends StatefulWidget {
  static String id = 'quartz_screen';
  @override
  _QuartzScreenState createState() => _QuartzScreenState();
}

class _QuartzScreenState extends State<QuartzScreen> {
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
        padding:  EdgeInsets.only(top: he *0.15),
        child: ListView(scrollDirection: Axis.vertical, children: [
          ImageOfPages( imagePath: 'images/Quartz/AmarilloVista.jpg',title: 'Amarillo Vista'),
          ImageOfPages( imagePath: 'images/Quartz/Aragon.jpg',title: 'Aragon'),
          ImageOfPages( imagePath: 'images/Quartz/Bellingham.jpg',title: 'Bellingham'),
          ImageOfPages( imagePath: 'images/Quartz/Bradford.jpg',title: 'Bradford'),
          ImageOfPages( imagePath: 'images/Quartz/BristolBlue.jpg',title: 'Bristol Blue'),
          ImageOfPages( imagePath: 'images/Quartz/Burnbury.jpg',title: 'Burnbury'),
          ImageOfPages( imagePath: 'images/Quartz/CalacattaGold.jpg',title: 'Calacatta Gold'),
          ImageOfPages( imagePath: 'images/Quartz/CalacattaLaza.jpg',title: 'Calacatta Laza'),
          ImageOfPages( imagePath: 'images/Quartz/daltile.jpg',title: 'Daltile'),
          ImageOfPages( imagePath: 'images/Quartz/Ferndale.jpg',title: 'Ferndale'),
          ImageOfPages( imagePath: 'images/Quartz/Halstead.jpg',title: 'Halstead'),
          ImageOfPages( imagePath: 'images/Quartz/MagnoliaQuantum.jpg',title: 'Magnolia Quantum'),
          ImageOfPages( imagePath: 'images/Quartz/NewQuay.jpg',title: 'New Quay'),
          ImageOfPages( imagePath: 'images/Quartz/Rondo.jpg',title: 'Rondo'),
          ImageOfPages( imagePath: 'images/Quartz/Shirebrook.jpg',title: 'Shirebrook'),
          ImageOfPages( imagePath: 'images/Quartz/Southampton.jpg',title: 'South Ampton'),
          ImageOfPages( imagePath: 'images/Quartz/TalbotGray.jpg',title: 'Talbot Gray'),




          Container(
            margin: EdgeInsets.only(left:30.0,bottom: 180.0),
          ),



        ]),
      )
    ]);
  }
}
