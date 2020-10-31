import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/RoundedButton/RoundedButton.dart';
import 'package:minutodoaprendizado/utils/widgets/RoundedTextField/RoundedTextField.dart';

class LoginEmailPassword extends StatefulWidget {
  static final String id = 'login_email_password_id';
  @override
  _LoginEmailPasswordState createState() => _LoginEmailPasswordState();
}

class _LoginEmailPasswordState extends State<LoginEmailPassword> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Hero(
                    tag: 'Logo',
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 180.0,
                    ),
                  ),
                ],
              ),
              Text(
                'Insira suas credenciais',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              Column(
                children: [
                  RoundedTextField(
                    textController: _email,
                    hintText: 'Insira seu email',
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    onChanged: () {
                      // _signInViewModel.isEmailValid(_emailTextField.text);
                      // _signInViewModel.canProceed();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: RoundedTextField(
                      textController: _password,
                      hintText: 'Insira sua senha',
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      textInputAction: TextInputAction.done,
                      // onChanged: () {
                      //   // _signInViewModel
                      //   //     .isPasswordValid(_passwordTextField.text);
                      //   // _signInViewModel.canProceed();
                      // },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ),
                  RoundedButton(
                    splashColor: Theme.of(context).primaryColor,
                    label: 'Entrar no Minuto Do Aprendizado',
                    isEnabled: false,
                    onTap: () {
                      // // loginUserWithEmailAndPassword(
                      // //   context,
                      // //   User(
                      // //     email: _emailTextField.text,
                      // //     password: _passwordTextField.text,
                      // //   ),
                      // );
                    },
                    enabledColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, RecoverEmailAndPassword.id);
                },
                child: Text(
                  'Esqueceu a senha?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.grey[500]),
                ),
              ),
              Text(
                // ignore: lines_longer_than_80_chars
                'Ao entrar com email e senha, você aceita os termos de uso da plataforma.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.grey[500]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
