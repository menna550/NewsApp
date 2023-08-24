import 'package:News_App/Screens/First.dart';
import 'package:News_App/Screens/Second.dart';
import 'package:News_App/Screens/Third.dart';
import 'package:flutter/material.dart';

import 'Screens/Forth.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SecondScreen());
    
  }
}