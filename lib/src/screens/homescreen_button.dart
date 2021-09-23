
import 'package:asdapp/src/screens/text.dart';
import 'package:flutter/material.dart';
class HomescreenButton extends StatelessWidget {
  HomescreenButton({required this.BuText }) ;
  final String BuText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          BuText,
          style: TextStyles.body,
        ),

        Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
          size: 25.0,
        ),
      ],
    );
  }
}
