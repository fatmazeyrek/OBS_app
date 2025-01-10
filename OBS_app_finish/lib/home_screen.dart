import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_drawer.dart';
import 'globals.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> _tasks = []; // Yapılacaklar listesi
  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    if (_taskController.text.isNotEmpty) {
      setState(() {
        _tasks.add(_taskController.text);
        _taskController.clear();
      });
    }
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
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
            Icon(FontAwesomeIcons.user, color: Colors.black),
            SizedBox(width: 10),
            Text(
              globalName,
              style: TextStyle(color: Colors.black),
            ),
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
              'Hoş Geldiniz, $globalName!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Yapılacaklar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: InputDecoration(
                      hintText: 'Yeni görev ekle',
                      filled: true,
                      fillColor: Color(0xFFE9EEF5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(FontAwesomeIcons.plus, color: Color(0xFF0ECFC7)),
                  onPressed: _addTask,
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      title: Text(_tasks[index]),
                      trailing: IconButton(
                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xFF0ECFC7)),
                        onPressed: () => _removeTask(index),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

