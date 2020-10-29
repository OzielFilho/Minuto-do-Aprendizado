import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/core/model/media/Media.dart';

class MediaWidget extends StatelessWidget {
  MediaWidget({@required this.media});

  final Media media;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:MediaQuery.of(context).size.height,
      width: 100,
      child: Column(
        children: [
          Card(
            child: Image.asset(
              media.imageUrl ?? 'assets/images/logo.png',
              fit: BoxFit.contain,
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
