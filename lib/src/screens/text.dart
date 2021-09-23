import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static TextStyle get body{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.White,fontSize: 24.0,decoration: TextDecoration.none));
  }
  static TextStyle get link{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.straw,fontSize: 22.0,decoration: TextDecoration.none));
  }
  static TextStyle get my{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.AnticWhite,fontSize: 18.0,decoration: TextDecoration.none));
  }
  static TextStyle get suggestion{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.straw,fontSize: 16.0,fontWeight: FontWeight.bold));
  }
  static TextStyle get error{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.google,fontSize: 15.0,fontWeight: FontWeight.bold));
  }

  static TextStyle get buttonTextDark{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.AnticWhite,fontSize: 18.0,fontWeight: FontWeight.bold));
  }
  static TextStyle get buttonTextLight{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.lightblue,fontSize: 18.0,fontWeight: FontWeight.bold));
  }
  static TextStyle get mytext{
    return GoogleFonts.allan(textStyle: TextStyle(color: AppColors.AnticWhite,fontSize: 30.0,fontWeight: FontWeight.w300,decoration: TextDecoration.none));
  }
  static TextStyle get myaddtext{
    return GoogleFonts.pacifico(textStyle: TextStyle(color: Color(0xFFFCAB92),fontSize: 35.0,decoration: TextDecoration.none));
  }
  static TextStyle get mylargetext{
    return GoogleFonts.allan(textStyle: TextStyle(color: AppColors.AnticWhite,fontSize: 40.0,fontWeight: FontWeight.w300,decoration: TextDecoration.none));
  }
  static TextStyle get mysmalltext{
    return GoogleFonts.allan(textStyle: TextStyle(color: Color(0xFFFCAB92),fontSize: 25.0,decoration: TextDecoration.none));
  }
  static TextStyle get body1{
    return GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.White,fontSize: 18.0,decoration: TextDecoration.none));
  }
  }