import 'package:flutter/material.dart';

import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/flatButton/FlatButtonModify.dart';

class Draw extends StatelessWidget {
  String urlImage =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/1200px-User_font_awesome.svg.png';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: colorPrimary,
        child: ListView(
          children: <Widget>[
            Container(
              height: 230,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: Row(
                  children: <Widget>[
                    Material(
                      elevation: 4.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      child: Ink.image(
                        padding: const EdgeInsets.all(15.0),
                        image: urlImage != null ? NetworkImage(urlImage) : null,
                        fit: BoxFit.cover,
                        width: 90.0,
                        height: 90.0,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Nome',
                      style: style1,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlatButtonModify(
                    title: 'Início',
                    onTap: () {},
                  ),
                  FlatButtonModify(
                    title: 'Conta',
                    onTap: () {},
                  ),
                  FlatButtonModify(
                    title: 'Home',
                    onTap: () {},
                  ),
                  FlatButtonModify(
                    title: 'Home',
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
      ),
    );
  }
}
