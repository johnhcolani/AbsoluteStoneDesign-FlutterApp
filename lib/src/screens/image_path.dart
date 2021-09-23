
import 'package:flutter/material.dart';


class ImageOfPages extends StatelessWidget {
  ImageOfPages({required this.imagePath,required this.title});
  final String imagePath;
  final String title;



  @override
  Widget build(BuildContext context) {
    var wi= MediaQuery.of(context).size.width;
    var he= MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,

      children: [
        Opacity(
            opacity: 0.3,
            child: Container(
              margin: EdgeInsets.only(bottom: he*0.1),
              width: wi*0.9,
              height: he *0.7,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.white),
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

            )
        ),
        Container(
          margin: EdgeInsets.only(bottom: he*.15),
          width: wi* 0.8,
          height: he * 0.55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(6, 6),
                blurRadius: 10.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-1, -1),
                blurRadius: 2,
                //blurRadius: 10.0,
              ),

            ],
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(

          margin: EdgeInsets.only(top:he *.5),
          child: Container(
            child: Text(
              title,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 25.0,
                color: Colors.white,
                fontFamily: 'SourceSansPro',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
