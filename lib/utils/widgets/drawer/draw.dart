import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:minutodoaprendizado/app/modules/pages/welcome_page/welcome_page.dart';
import 'package:minutodoaprendizado/core/view_model/user_view_model/user_view_model.dart';

import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/flatButton/FlatButtonModify.dart';

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  String urlImage =
      'https://news-cdn.softpedia.com/images/news2/What-039-s-Written-on-Bill-Gates-039-Face-Positive-73-Negative-27-2.jpg';

  var _userViewModel = GetIt.I.get<UserViewModel>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Observer(
        builder: (_) {
          return Container(
            color: Theme.of(context).primaryColor,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 170,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            height: 80.0,
                            width: 80.0,
                            child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: urlImage != null
                                    ? NetworkImage(urlImage, scale: 2)
                                    : Container()),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          _userViewModel?.name ?? 'Carregando',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButtonModify(
                        title: 'Seu desempenho',
                        onTap: () {
                          print('DIRECIONADO PARA A TELA DE DESEMPENHO');
                        },
                      ),
                      FlatButtonModify(
                        title: 'Configurações',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 230,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlatButtonModify(
                        title: 'Sair',
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, WelcomePage.id);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
