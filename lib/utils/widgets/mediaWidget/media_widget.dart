import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:minutodoaprendizado/core/model/media/Media.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

class MediaWidget extends StatelessWidget {
  MediaWidget({@required this.media,this.index});

  final Media media;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Opacity(
                  alwaysIncludeSemantics: true,
                  opacity: 0.7,
                  child: Image.asset(
                    media.imageUrl ?? 'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('VIDEO - ${index+1} ');
                  },
                  child: Center(
                    child: Icon(
                      FlutterIcons.play_arrow_mdi,
                      size: 100,
                      color: colorPrimary,
                    ),
                  ),
                ),
              ],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(media.title ?? 'Titulo'),
        ],
      ),
    );
  }
}
