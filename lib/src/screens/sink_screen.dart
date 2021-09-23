import 'package:asdapp/src/screens/background_image.dart';
import 'package:asdapp/src/screens/home_page.dart';
import 'package:asdapp/src/screens/image_path.dart';
import 'package:flutter/material.dart';

class SinkScreen extends StatefulWidget {
  static String id = 'sink_screen';
  @override
  _SinkScreenState createState() => _SinkScreenState();
}

class _SinkScreenState extends State<SinkScreen> {
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
        padding:  EdgeInsets.only(top: he *0.15), child: ListView(scrollDirection: Axis.vertical,
            children: [
          ImageOfPages( imagePath: 'images/Sink/Model-160.jpg',title: 'Model-160'),
          ImageOfPages( imagePath: 'images/Sink/Model-502.jpg',title: 'Model-502'),
          ImageOfPages( imagePath: 'images/Sink/Model-503.jpg',title: 'Model-503'),
          ImageOfPages( imagePath: 'images/Sink/Model-1513.jpg',title: 'Model-1513'),
          ImageOfPages( imagePath: 'images/Sink/Model-1616.jpg',title: 'Model-1616'),
          ImageOfPages( imagePath: 'images/Sink/Model-1815.jpg',title: 'Model-1815'),
          ImageOfPages( imagePath: 'images/Sink/Model-2318.jpg',title: 'Model-2318'),
          ImageOfPages( imagePath: 'images/Sink/Model-2421.jpg',title: 'Model-2421'),
          ImageOfPages( imagePath: 'images/Sink/Model-2718.jpg',title: 'Model-2718'),
          ImageOfPages( imagePath: 'images/Sink/Model-3118.jpg',title: 'Model-3118'),
          ImageOfPages( imagePath: 'images/Sink/Model-3121.jpg',title: 'Model-3121'),








        ]),
      )
    ]);
  }
}

