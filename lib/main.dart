
import 'package:flutter/material.dart';
import 'package:quiz_application_1/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
