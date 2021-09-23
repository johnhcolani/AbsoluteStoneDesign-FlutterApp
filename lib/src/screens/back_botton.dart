
import 'package:asdapp/src/screens/home_page.dart';
import 'package:flutter/material.dart';
class BackButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70.0),
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
