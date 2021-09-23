
import 'package:asdapp/src/screens/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage({required this.FImagePath,
    required this.FIText,required this.SImagePath,
    required this.SIText });

  final String FImagePath;
  final String SImagePath;
  final String FIText;
  final String SIText;




  @override
  Widget build(BuildContext context) {
    var wi= MediaQuery.of(context).size.width;
    var he= MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(1.0),
              width: wi * 0.23,
              height: he* 0.1,
              child: Image.asset(FImagePath),
            ),
            // SizedBox(
            //   height: 5.0,
            // ),
            Text(
              FIText,
              style: TextStyle(
                fontSize: wi*0.05,
                color: AppColors.TitanWhite,
                fontFamily: 'SourceSansPro',
              ),
            ),
          ],
        ),
        SizedBox(
          width: 40.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(1.0),
              width: wi * 0.23,
              height: he* 0.1,
              child: Image.asset(SImagePath),
            ),
            // SizedBox(
            //   height: 5.0,
            // ),
            Text(
              SIText,
              style: TextStyle(
                fontSize: wi*0.05,
                color: AppColors.TitanWhite,
                fontFamily: 'SourceSansPro',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
