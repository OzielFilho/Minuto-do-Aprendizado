import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/core/model/media/Media.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';
import 'package:minutodoaprendizado/utils/widgets/mediaWidget/media_widget.dart';

class MediaPage extends StatefulWidget {
  static final String id = 'media_page_id';
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Conteúdo Digital',
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
