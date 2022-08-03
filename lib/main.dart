import 'package:flutter/material.dart';
import 'package:system_demo/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Launch Pad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const OnboardingScreen(),
      home: HomePage(),
    );
  }
}
