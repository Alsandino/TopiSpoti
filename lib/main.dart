import 'package:flutter/material.dart';
import 'screens/results_page.dart';
import 'screens/start_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TopiSpoti',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (context) => StartPage(),
        '/first': (context) => LoginPage(),
        '/second': (context) => ResultsPage(),
      },
    );
  }
}
