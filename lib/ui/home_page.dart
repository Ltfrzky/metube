import 'package:flutter/material.dart';

import 'tube_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TubeListItem> tubeItems = [
    TubeListItem(
      videoId: "DWcJFNfaw9c",
      videoTitle: "lofi hip hop radio - beats to sleep/chill to",
      videoDuration: "LIVE",
      videoUploadDate: "Feb 26, 2020",
      youtuber: "Lofi Girl",
    ),
    TubeListItem(
        videoId: "vg6tWd-4Klo",
        videoTitle: "TUTORIAL MINTA NAIK GAJI!",
        videoDuration: "1:15:07",
        videoUploadDate: "Jan 21, 2020",
        youtuber: "Raditya Dika"),
    TubeListItem(
        videoId: "PHgc8Q6qTjc",
        videoTitle: "Congratulations",
        videoDuration: "4:18",
        videoUploadDate: "Mar 31, 2019",
        youtuber: "PewDiePie"),
    TubeListItem(
        videoId: "CpIeKn1LFA4",
        videoTitle: "Kitten to Cat super fast time lapse",
        videoDuration: "0:26",
        videoUploadDate: "Nov 9, 2018",
        youtuber: "Warren Photographic"),
    TubeListItem(
        videoId: "fDUTjmibcbY",
        videoTitle: "Kehebohan Rekaman Project Tanya Hati",
        videoDuration: "7:38",
        videoUploadDate: "Dec 19, 2020",
        youtuber: "Mawar de Jongh"),
    TubeListItem(
        videoId: "3Vw02LjalNw",
        videoTitle: "MAKAN DIPINGGIR LAUT INI KALIAN BISA BAYAR SEIKHLASNYA",
        videoDuration: "17:34",
        videoUploadDate: "Jul 27, 2021",
        youtuber: "Nex Carlos"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          children: [Expanded(child: ListView(children: tubeItems))],
        ));
  }
}
