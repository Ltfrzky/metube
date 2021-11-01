import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThumbnailView extends StatelessWidget {
  final String videoId;
  final String videoDuration;

  const ThumbnailView({Key key, this.videoDuration, this.videoId})
      : super(key: key);

  bool _isDurationLive() {
    return videoDuration == "LIVE";
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.network("https://img.youtube.com/vi/$videoId/maxresdefault.jpg"),
      Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: (() {
                  if (_isDurationLive()) {
                    return Colors.white70;
                  } else {
                    return Colors.black54;
                  }
                }()),
                borderRadius: BorderRadius.all(Radius.elliptical(4, 4))),
            child: Text(
              "$videoDuration",
              style: TextStyle(
                  color: (() {
                if (_isDurationLive()) {
                  return Colors.red;
                } else {
                  return Colors.white;
                }
              }())),
            ),
          ))
    ]);
  }
}
