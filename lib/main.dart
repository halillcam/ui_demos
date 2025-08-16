import 'package:flutter/material.dart';
import 'package:ui_demos/demos/fitness_app_ui/fitness_detail.dart';
import 'package:ui_demos/demos/fitness_app_ui/fitness_main.dart';
import 'package:ui_demos/kuaforsen_ui_test/kufaorler_test_ui.dart';

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
      theme: ThemeData(),
      home: KufaorlerTestUi(),
    );
  }
}
