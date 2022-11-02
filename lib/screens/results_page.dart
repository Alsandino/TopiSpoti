import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key,});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {

  String yourSong = 'Your favorite song is';
  String nombreCancion = 'MAC AYRES - WAITING';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.transparent,
        title: Text('TopiSpoti', style: TextStyle(color: Colors.black),),
        centerTitle: true, elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () { print('a'); },
        ),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              yourSong,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              nombreCancion,
              style: TextStyle(fontSize: 35.0),
            )],
        ),
      ),
    );
  }
}
