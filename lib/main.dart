import 'package:flutter/material.dart';
import 'package:ui_demos/demos/inspiration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
       
      
       
      ),
      home: InspirationDemo(),
    );
  }
}

