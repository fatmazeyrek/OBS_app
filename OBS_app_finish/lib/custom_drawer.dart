import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'courses_screen.dart';
import 'schedule_screen.dart';
import 'graduation_info_screen.dart';
import 'logout_screen.dart';
import 'globals.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF3FCEC7)),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.user, size: 50, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  globalName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.house, color: Color(0xFF0ECFC7)),
            title: Text('Anasayfa'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.user, color: Color(0xFF3ECFC7)),
            title: Text('Profil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.book, color: Color(0xFF3ECFC7)),
            title: Text('Derslerim'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CoursesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.calendarWeek, color: Color(0xFF3ECFC7)),
            title: Text('Ders Programı'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScheduleScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.graduationCap, color: Color(0xFF3ECFC7)),
            title: Text('Mezuniyet Bilgisi'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GraduationInfoScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.rightFromBracket, color: Color(0xFF3FCEC7)),
            title: Text('Çıkış'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogoutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
