import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/core/model/media/Media.dart';
import 'package:minutodoaprendizado/utils/widgets/mediaWidget/media_widget.dart';

class MediaPage extends StatefulWidget {
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GridView.builder(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0.5,
              childAspectRatio: 0.5,
            ),
            itemCount: mediaList.length,
            itemBuilder: (context, index) {
              return MediaWidget(media: mediaList[index]);
            },),
      ],
    );
  }
}
