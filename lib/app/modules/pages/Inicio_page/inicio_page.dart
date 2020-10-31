import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/core/model/media/Media.dart';
import 'package:minutodoaprendizado/utils/listUtils/categList.dart';
import 'package:minutodoaprendizado/utils/widgets/MediaWidget/media_widget.dart';

import 'package:minutodoaprendizado/utils/widgets/RoundedTextField/RoundedTextField.dart';
import 'package:minutodoaprendizado/utils/widgets/flatButton/FlatButtonModify.dart';

class InicioPage extends StatefulWidget {
  static final String id = 'inicio_page_id';
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final TextEditingController _searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Categorias',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FlatButtonModify(
                  color: Theme.of(context).primaryColor,
                  title: categoList[index],
                  onTap: () {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Pesquise o conteúdo',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          RoundedTextField(
            textController: _searchTextController,
            hintText: 'Buscar músicas, artistas ou álbuns',
            icon: Icon(FlutterIcons.search_mdi),
            onChanged: () {},
            onIconTap: () {},
          ),
          GridView.builder(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 16.0,
              right: 16.0,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.5,
              mainAxisSpacing: 0.5,
              childAspectRatio: 0.7,
            ),
            itemCount: mediaList.length,
            itemBuilder: (context, index) {
              return MediaWidget(
                index: index,
                media: mediaList[index],
              );
            },
          ),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
