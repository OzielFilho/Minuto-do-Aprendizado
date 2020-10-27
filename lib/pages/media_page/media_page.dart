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
    return Container(
      child: ListView.builder(
          itemCount: mediaList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(20.0),
              child: MediaWidget(media: mediaList[index])
            );
          }),
    );
  }
}
