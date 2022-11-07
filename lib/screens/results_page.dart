import 'package:flutter/material.dart';
import 'package:topispoti/top_song_item.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({
    super.key,
  });

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(children: [
        AppBar(
          backgroundColor: Colors.black12,
          elevation: 0.0,
          title: Text(
            'Your Favorite Songs',
            style: TextStyle(fontSize: 19.0),
          ),
          centerTitle: true,
        ),
        Column(
          children: [
            TopSongItem('Mac Ayres - Waiting', 1200),
            TopSongItem('Mac Ayres - Easy', 9900),
            TopSongItem('Mac Ayres - I Wanna Give Up', 10),
            TopSongItem('Michael Jackson - 2000 Watts', 200),
            TopSongItem('Jeremih - Impatient', 1200),
            TopSongItem('El Fari - La Mandanga', 12200),
            TopSongItem('Pitbull - Fireball', 1),
            TopSongItem('Mac Ayres - Waiting', 1200),
            TopSongItem('Mac Ayres - Easy', 9900),
            TopSongItem('Mac Ayres - I Wanna Give Up', 10),
            TopSongItem('Michael Jackson - 2000 Watts', 200),
            TopSongItem('Jeremih - Impatient', 1200),
            TopSongItem('El Fari - La Mandanga', 12200),
            TopSongItem('Pitbull - Fireball', 1),
            TopSongItem('Mac Ayres - Waiting', 1200),
            TopSongItem('Mac Ayres - Waiting', 1200),
            TopSongItem('Mac Ayres - Waiting', 1200),
            TopSongItem('Mac Ayres - Waiting', 1200),
            //listview con el top de canciones
          ],
        ),
      ]),
    );
  }
}
