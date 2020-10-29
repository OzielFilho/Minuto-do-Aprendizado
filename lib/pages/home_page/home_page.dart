import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/pages/Inicio_page/inicio_page.dart';
import 'package:minutodoaprendizado/pages/chat_page/chat_page.dart';

import 'package:minutodoaprendizado/pages/media_page/media_page.dart';


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
      bottomSheet: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: colorPrimary,
        tabs: <Widget>[
          Tab(
            icon: Icon(FlutterIcons.home_mdi, color: colorPrimary),
            //text: 'Inicio',
            child: Text(
              'inicio',
              style: style1,
            ),
          ),
          Tab(
            icon: Icon(FlutterIcons.photo_album_mdi, color: colorPrimary),
            //text: 'Inicio',
            child: Text(
              'Midia',
              style: style1,
            ),
          ),
          Tab(
            icon: Icon(FlutterIcons.chat_mco, color: colorPrimary),
            //text: 'Inicio',
            child: Text(
              'Chat',
              style: style1,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: null,
        backgroundColor: colorPrimary,
      ),
      drawer: Draw(),
      body: 
         TabBarView(
        
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
