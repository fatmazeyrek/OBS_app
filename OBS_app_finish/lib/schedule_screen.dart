import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_drawer.dart';
import 'globals.dart'; // Global değişkenleri ekledik

class ScheduleScreen extends StatelessWidget {
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
            Icon(FontAwesomeIcons.calendarWeek, color: Colors.black),
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
              'Haftalık Ders Programı',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildDaySchedule('Pazartesi', ['11:30 - 14:15 BIL353 - Nümerik Analiz', '16:30 - 17:15 İngilizce']),
            _buildDaySchedule('Çarşamba', ['09:30 - 12:30 BIL475 - Örüntü Tanıma', '15:30 - 16:30 BIL493 - Mühendislik Etiği']),
            _buildDaySchedule('Perşembe', ['09:30 - 12:30 BIL403 - Yazılım Mühendisliği', '15:30 - 16:30 İngilizce']),
            _buildDaySchedule('Cuma', ['09:30 - 12:30 BIL365 - Mobil Programlama']),
          ],
        ),
      ),
    );
  }

  Widget _buildDaySchedule(String day, List<String> courses) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            day,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          ...courses.map((course) => Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 4.0),
            child: Text(course),
          )),
        ],
      ),
    );
  }
}


