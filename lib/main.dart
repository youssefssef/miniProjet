// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/mobileScreen.dart';
import 'screens/webScreen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 700) {
              // Mobile Layout
              return MobileScreen();
            } else {
              // Web Layout
              return WebScreen();
            }
          },
        ),
      ),
    );
  }
}
