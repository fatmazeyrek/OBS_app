import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'home_screen.dart';
import 'globals.dart'; // Global değişkenler dosyası

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<Map<String, dynamic>> loadUserData() async {
    String jsonString = await rootBundle.loadString('assets/users.json');
    return json.decode(jsonString);
  }

  void _login() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // JSON dosyasını yükle
    Map<String, dynamic> data = await loadUserData();

    bool isAuthenticated = false;

    for (var user in data['users']) {
      if (user['username'] == username && user['password'] == password) {
        isAuthenticated = true;
        globalName = user['name']; // Global değişkene ad-soyad ataması
        globalEmail = user['email']; // Global değişkene e-posta ataması
        break;
      }
    }

    if (isAuthenticated) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Hatalı Giriş'),
          content: Text('Kullanıcı adı veya parola hatalı.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Tamam'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/200x200.png', width: 260, height: 130),
            SizedBox(height: 40),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Kullanıcı Adı',
                filled: true,
                fillColor: Color(0xFFE9EEF5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Parola',
                filled: true,
                fillColor: Color(0xFFE9EEF5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3FCEC7),
                minimumSize: Size(361, 56),
              ),
              child: Text(
                'Giriş Yap',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
