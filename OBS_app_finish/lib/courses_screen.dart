import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_drawer.dart';
import 'globals.dart'; // Global değişkenleri ekledik

class CoursesScreen extends StatelessWidget {
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
            Icon(FontAwesomeIcons.book, color: Colors.black),
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
              'Derslerim',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                _buildTableRow('Ders Kodu', 'Ders Adı', 'Öğretim Görevlisi'),
                _buildTableRow('BIL365', 'Mobil Programlama', 'Dr. Muhammed Sinan Başarslan'),
                _buildTableRow('MAT353', 'Nümerik Analiz', 'Dr. İbrahim Arı'),
                _buildTableRow('BIL475', 'Örüntü Tanıma', 'Dr. Nurullah Çalık'),
                _buildTableRow('BIL493', 'Mühendislik Etiği', 'Prof. Adem Karhoca'),
                _buildTableRow('BIL403', 'Yazılım Mühendisliği', 'Dr. Serpil Üstebay'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String code, String name, String instructor) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(code, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(instructor),
        ),
      ],
    );
  }
}
