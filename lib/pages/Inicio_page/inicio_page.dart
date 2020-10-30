import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/utils/listUtils/categList.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';
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
                  style: style1,
                ),
                Container(
                  height: 1,
                  color: colorPrimary,
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
                  color: colorPrimary,
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
                  'Faça a pesquisa do conteúdo',
                  style: style1,
                ),
                Container(
                  height: 1,
                  color: colorPrimary,
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
        ],
      ),
    );
  }
}
