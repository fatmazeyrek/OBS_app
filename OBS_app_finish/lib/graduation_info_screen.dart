import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_drawer.dart';
import 'globals.dart'; // Global değişkenleri ekledik

class GraduationInfoScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
            Icon(FontAwesomeIcons.graduationCap, color: Colors.black),
            SizedBox(width: 10),
            Text(globalName, style: TextStyle(color: Colors.black)),
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mezuniyet Bilgileri',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildInfoRow('Tamamlanan Kredi', '120'),
            _buildInfoRow('Kalan Kredi', '30'),
            _buildInfoRow('Tamamlanan Ders Dönemi', '6'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
