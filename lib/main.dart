import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/pages/config_page/config_page.dart';
import 'package:minutodoaprendizado/pages/home_page/home_page.dart';
import 'package:minutodoaprendizado/pages/login_page/login_email_password/login_email_password.dart';
import 'package:minutodoaprendizado/pages/login_page/login_page.dart';
import 'package:minutodoaprendizado/pages/welcome_page/welcome_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // theme: ,
    title: 'Minuto do Aprendizado',
    initialRoute: WelcomePage.id,
    
    routes: {
      WelcomePage.id: (context) => WelcomePage(),
      HomePage.id: (context) => HomePage(),
      ConfigPage.id: (context) => ConfigPage(),
      LoginPage.id: (context) => LoginPage(),
      LoginEmailPassword.id: (context) => LoginEmailPassword()
    },
  ));
}
