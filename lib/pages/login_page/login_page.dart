import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/pages/home_page/home_page.dart';

import 'package:minutodoaprendizado/pages/login_page/login_email_password/login_email_password.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/flatButton/FlatButtonModify.dart';

class LoginPage extends StatefulWidget {
  static final String id = 'login_page_id';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButtonModify(
                title: 'Login - Email e Senha',
                padding: const EdgeInsets.all(15),
                onTap: () =>
                    Navigator.pushNamed(context, LoginEmailPassword.id),
                color: Color(0xffdb9d16),
              ),
              SizedBox(
                height: 12,
              ),
              FlatButtonModify(
                title: 'Login - Google',
                padding: const EdgeInsets.all(15),
                onTap: () =>
                    Navigator.pushNamed(context, HomePage.id),
                color: Color(0xffdb9d16),
              ),
              // FlatButton(
              //   child: Text(
              //     'Login - Email e Senha',
              //     style: Themes().style2,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   padding: const EdgeInsets.all(15),
              //   color: Color(0xffdb9d16),
              //   textColor: Colors.white,
              //   onPressed: () =>
              //       //Navegaçao pora o login
              //       Navigator.pushNamed(context, LoginEmailPassword.id),
              // ),
              SizedBox(
                height: 12,
              ),
              // FlatButton(
              //   child: Text(
              //     'Login - Google',
              //     style: Themes().style2,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   padding: const EdgeInsets.all(15),
              //   color: Color(0xffdb9d16),
              //   textColor: Colors.white,
              //   onPressed: () =>
              //       //Navegaçao pora o loginp
              //       Navigator.pushNamed(context, HomePage.id),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Cadastre-se',
                      style: style1,
                    ),
                    onPressed: () {
                      //Navegação para o cadastro
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
