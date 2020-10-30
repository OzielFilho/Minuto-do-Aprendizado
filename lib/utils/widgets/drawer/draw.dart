import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:minutodoaprendizado/core/view_model/user_view_model/user_view_model.dart';
import 'package:minutodoaprendizado/pages/Inicio_page/inicio_page.dart';

import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/flatButton/FlatButtonModify.dart';

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  String urlImage =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/1200px-User_font_awesome.svg.png';

  var _userViewModel = GetIt.I.get<UserViewModel>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Observer(
        builder: (_) {
          return Container(
            color: colorPrimary,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 170,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
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
                          style: style1,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButtonModify(
                        title: 'Sair',
                        onTap: () {},
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
