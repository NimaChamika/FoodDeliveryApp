import 'package:flutter/material.dart';
import 'package:fw2_fooddelivery/screen_manager.dart';
import 'package:fw2_fooddelivery/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      home: HomeScreen(),
    );
  }
}


