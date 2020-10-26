import 'package:flutter/material.dart';

import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/flatButton/FlatButtonModify.dart';

class Draw extends StatelessWidget {
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
              child: Row(
                children: <Widget>[
                  //ICON
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Nome',
                    style: style1,
                  ),
                ],
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
