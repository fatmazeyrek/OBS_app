import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_drawer.dart';
import 'login_screen.dart';
import 'globals.dart'; // Global değişkenleri ekledik

class LogoutScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _logout(BuildContext context) {
    globalName = '';
    globalEmail = '';
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
          (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xFF3FCEC7),
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.bars, color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Row(
          children: [
            Icon(FontAwesomeIcons.rightFromBracket, color: Colors.black),
            SizedBox(width: 10),
            Text('Çıkış', style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/imu_logo.png', width: 120, height: 90),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFF3FCEC7),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Çıkış Yapmak İstiyor Musunuz?',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _logout(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE9EEF5),
                    ),
                    child: Text('Evet', style: TextStyle(color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE9EEF5),
                    ),
                    child: Text('Hayır', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
