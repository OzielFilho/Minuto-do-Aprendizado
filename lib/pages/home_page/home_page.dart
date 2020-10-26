import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/pages/config_page/config_page.dart';

import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/drawer/draw.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page_id';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomePage(),
    ConfigPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: colorPrimary,
      ),
      drawer: Draw(),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorPrimary,
        elevation: 0.0,
        selectedItemColor: Colors.white,
        selectedLabelStyle: style1,
        unselectedItemColor: Color(0xFF757575),
        unselectedLabelStyle: style1,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        iconSize: 25.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.home_mdi),
            label: 'Página inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.search_mdi),
            label: 'Buscar',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(FlutterIcons.library_music_outline_mco),
          //   label: 'Biblioteca',
          // ),
        ],
      ),
    );
  }
}
