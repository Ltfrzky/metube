import 'package:flutter/material.dart';
import 'package:metube/ui/player_page.dart';
import 'package:metube/ui/thumbnail_view.dart';

class TubeListItem extends StatefulWidget {
  const TubeListItem(
      {Key key,
      this.videoId,
      this.videoTitle,
      this.videoDuration,
      this.videoUploadDate,
      this.youtuber})
      : super(key: key);

  final String videoId;
  final String videoTitle;
  final String videoDuration;
  final String videoUploadDate;
  final String youtuber;

  @override
  _TubeListItemState createState() => _TubeListItemState();
}

class _TubeListItemState extends State<TubeListItem> {
  int videoView = 0;

  void _incrementView() {
    setState(() {
      videoView++;
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PlayerPage(item: widget, views: videoView)));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: _incrementView,
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: screenWidth,
        margin: EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            ThumbnailView(
                videoId: widget.videoId, videoDuration: widget.videoDuration),
            Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(backgroundColor: Colors.red),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.videoTitle}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.youtuber} \u2022 ",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "$videoView views \u2022 ",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "${widget.videoUploadDate}",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
