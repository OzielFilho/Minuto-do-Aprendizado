import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/app/modules/pages/Inicio_page/inicio_page.dart';
import 'package:minutodoaprendizado/app/modules/pages/chat_page/chat_page.dart';
import 'package:minutodoaprendizado/app/modules/pages/media_page/media_page.dart';


import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/drawer/draw.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page_id';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 60,
        child: TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Theme.of(context).primaryColor,
          tabs: <Widget>[
            Tab(
              icon: Icon(FlutterIcons.home_mdi, color: Theme.of(context).primaryColor),
              child: Text(
                'inicio',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Tab(
              icon: Icon(FlutterIcons.photo_album_mdi, color: Theme.of(context).primaryColor),
              //text: 'Inicio',
              child: Text(
                'Midia',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Tab(
              icon: Icon(FlutterIcons.chat_mco, color: Theme.of(context).primaryColor),
              //text: 'Inicio',
              child: Text(
                'Chat',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: null,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Draw(),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          InicioPage(),
          MediaPage(),
          ChatPage(),
        ],
      ),
    );
  }
}
