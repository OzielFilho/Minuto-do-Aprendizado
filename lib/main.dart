import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:minutodoaprendizado/app/modules/pages/auth/cadastro_page/cadastro_email_password.dart';
import 'package:minutodoaprendizado/core/view_model/user_view_model/user_view_model.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

import 'app/modules/pages/Inicio_page/inicio_page.dart';
import 'app/modules/pages/auth/login_page/login_email_password/login_email_password.dart';
import 'app/modules/pages/auth/login_page/login_page.dart';
import 'app/modules/pages/chat_page/chat_page.dart';
import 'app/modules/pages/config_page/config_page.dart';
import 'app/modules/pages/home_page/home_page.dart';
import 'app/modules/pages/media_page/media_page.dart';
import 'app/modules/pages/welcome_page/welcome_page.dart';

void main() {
  runApp(MinutoDoAprendizado());
  registerSingletons();
}

void registerSingletons() {
  var getIt = GetIt.I;

  getIt.registerSingleton<UserViewModel>(UserViewModel());
}

class MinutoDoAprendizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      title: 'Minuto do Aprendizado',
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        HomePage.id: (context) => HomePage(),
        ConfigPage.id: (context) => ConfigPage(),
        LoginPage.id: (context) => LoginPage(),
        LoginEmailPassword.id: (context) => LoginEmailPassword(),
        InicioPage.id: (context) => InicioPage(),
        MediaPage.id: (context) => MediaPage(),
        ChatPage.id: (context) => ChatPage(),
        CadastroEmailPasswordPage.id: (context) => CadastroEmailPasswordPage(),
      },
    );
  }
}
