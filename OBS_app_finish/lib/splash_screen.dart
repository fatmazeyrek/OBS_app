import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/200x200.png', width: 260, height: 130),
            SizedBox(height: 20),
            Text(
              'İstanbul Medeniyet Üniversitesi\nÖğrenci Bilgilendirme Sistemi',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFD9D9D9), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
