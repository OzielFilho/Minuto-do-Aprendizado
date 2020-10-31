import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xffdb9d16),
      fontSize: 25.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    headline2: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xffdb9d16),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    headline3: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xffdb9d16),
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xffdb9d16),
      fontSize:15.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    subtitle2: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
  ),
  primaryColor: Color(0xffdb9d16),
  accentColor: Color(0xFF1E74BA),
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  accentColorBrightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    color: Color(0xffdb9d16),
    elevation: 0.0,
    brightness: Brightness.dark,
  ),
  
  tabBarTheme: TabBarTheme(
    labelColor: Color(0xFFF0F0F5),
    unselectedLabelColor: Color(0xFFe0e0e0),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
    labelStyle: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
  ),
);
