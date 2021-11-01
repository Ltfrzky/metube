import 'package:flutter/material.dart';
import 'package:metube/ui/tube_item.dart';

class PlayerPage extends StatefulWidget {
  final TubeListItem item;
  final int views;

  const PlayerPage({Key key, this.item, this.views}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  bool isSubscribe = false;

  void _subscribeChannel() {
    setState(() {
      isSubscribe = !isSubscribe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
              "https://img.youtube.com/vi/${widget.item.videoId}/maxresdefault.jpg"),
          Container(
            margin: EdgeInsets.only(left: 8, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.item.videoTitle}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      "${widget.views} views \u2022 ",
                    ),
                    Text(
                      "${widget.item.videoUploadDate}",
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Column(
              children: [
                Divider(height: 2, thickness: 2, indent: 0, endIndent: 0),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
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
                              "${widget.item.youtuber}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: TextButton(
                            onPressed: _subscribeChannel,
                            child: Text(
                              () {
                                if (isSubscribe) {
                                  return "UNSUBSCRIBE";
                                } else {
                                  return "SUBSCRIBE";
                                }
                              }(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: (() {
                                    if (isSubscribe) {
                                      return Colors.grey;
                                    } else {
                                      return Colors.red;
                                    }
                                  }())),
                            )),
                      )
                    ],
                  ),
                ),
                Divider(height: 2, thickness: 2, indent: 0, endIndent: 0),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
