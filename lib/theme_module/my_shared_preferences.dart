import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_urraan_online_batch_38_ui/theme_module/theme_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SharedPreferencesTest(),
    );
  }
}

class SharedPreferencesTest extends StatefulWidget {
  @override
  _SharedPreferencesTestState createState() => _SharedPreferencesTestState();
}

class _SharedPreferencesTestState extends State<SharedPreferencesTest> {
  String _storedValue = "No data";

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('testKey', 'Hello SharedPreferences');
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _storedValue = prefs.getString('testKey') ?? "No data";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SharedPreferences Test")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_storedValue),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _saveData,
            child: Text("Save Data"),
          ),
          ElevatedButton(
            onPressed: _loadData,
            child: Text("Load Data"),
          ),
        ],
      ),
    );
  }
}

