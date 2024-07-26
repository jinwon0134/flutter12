import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'login.dart';
import 'eyes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "자기소개 앱",
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        )),
        home: const Mainpage());
  }
}
