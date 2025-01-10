import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İstanbul Medeniyet Üniversitesi OBS',
      theme: ThemeData(
        primaryColor: Color(0xFF3FCEC7),
        scaffoldBackgroundColor: Color(0xFFF9F9F9),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF3FCEC7),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
