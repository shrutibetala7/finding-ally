// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:finding_ally/screens/homescreen.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays:[SystemUiOverlay.bottom]);
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage()
      },
    );
  }
}

