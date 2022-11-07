import 'package:flutter/material.dart';

//Custom widget that displays every song and the amount of plays from the user
class TopSongItem extends StatelessWidget {
  TopSongItem(@required this.songName, @required this.plays);

  String songName = 'Artist - Song Name';
  int plays = 100;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              songName,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('$plays plays', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
