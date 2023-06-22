import 'package:flutter/material.dart';
import 'package:talkio/screens/auth/login_screen.dart';
import 'package:talkio/screens/home_screen.dart';

//Global Object for accessing device screen size
late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Talkio",
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              centerTitle: true,
              elevation: 1,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
              backgroundColor: Colors.white)),
      home: LoginScreen(),
    );
  }
}
