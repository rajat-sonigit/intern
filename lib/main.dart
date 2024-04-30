import 'package:flutter/material.dart';
import 'package:interproj/home.dart';
import 'package:interproj/home_page.dart';
import 'package:interproj/login.dart';
import 'package:interproj/screen.dart';
import 'package:interproj/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: const SafeArea(
        child: Screen(),
      ),
    );
  }
}
