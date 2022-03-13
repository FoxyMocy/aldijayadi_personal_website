import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 18.0;

Color kPrimaryColor = const Color(0xff286F6C);
Color kBlackColor = const Color(0xff051E34);
Color kBackgroundColor = const Color(0xffF8F7F1);
Color kGreyColor = const Color(0xff8F8F8F);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kRedColor = const Color(0xffEF5350);
Color kTransparentColor = Colors.transparent;

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight black = FontWeight.w900;

TextStyle regularTextStyle =
    GoogleFonts.roboto(color: kBlackColor, fontWeight: regular);
TextStyle titleTextStyle =
    GoogleFonts.roboto(color: kBlackColor, fontSize: 16, fontWeight: bold);
TextStyle subTitleTextStyle =
    GoogleFonts.roboto(color: kBlackColor, fontSize: 12, fontWeight: regular);
TextStyle informTextStyle =
    GoogleFonts.roboto(color: kGreyColor, fontSize: 10, fontWeight: regular);
TextStyle headTextStyle =
    GoogleFonts.novaSquare(color: kPrimaryColor, fontSize: 64);
