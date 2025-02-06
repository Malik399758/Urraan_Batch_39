import 'package:flutter/material.dart';
import 'package:flutter_urraan_online_batch_38_ui/batch39_ui/row_column.dart';
import 'package:flutter_urraan_online_batch_38_ui/batch39_ui/text_ui.dart';
import 'package:flutter_urraan_online_batch_38_ui/page1.dart';

void main() => runApp(FitnessApp());

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:RowColumn(),
      //TextUi(),
      //Page1(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Dashboard'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            _buildCard('Steps', '5000', Icons.directions_walk, Colors.blue),
            _buildCard('Water', '2L / 3L', Icons.local_drink, Colors.teal),
            _buildCard('Exercise', '30 mins', Icons.fitness_center, Colors.orange),
            _buildCard('Goals', '3/5 achieved', Icons.flag, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String value, IconData icon, Color color) {
    return Card(
      color: color.withOpacity(0.8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.white),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
